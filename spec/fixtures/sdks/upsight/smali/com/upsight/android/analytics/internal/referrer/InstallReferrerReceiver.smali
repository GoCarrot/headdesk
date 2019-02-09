.class public Lcom/upsight/android/analytics/internal/referrer/InstallReferrerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstallReferrerReceiver.java"


# static fields
.field private static final ACTION_INSTALL_REFERRER:Ljava/lang/String; = "com.android.vending.INSTALL_REFERRER"

.field private static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final EXTRA_REFERRER:Ljava/lang/String; = "referrer"

.field public static final REFERRER_PARAM_KEY_CAMPAIGN:Ljava/lang/String; = "utm_campaign"

.field public static final REFERRER_PARAM_KEY_CONTENT:Ljava/lang/String; = "utm_content"

.field public static final REFERRER_PARAM_KEY_MEDIUM:Ljava/lang/String; = "utm_medium"

.field public static final REFERRER_PARAM_KEY_SOURCE:Ljava/lang/String; = "utm_source"

.field public static final REFERRER_PARAM_KEY_TERM:Ljava/lang/String; = "utm_term"

.field public static final SHARED_PREFERENCES_KEY_REFERRER:Ljava/lang/String; = "referrer"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-static {p1}, Lcom/upsight/android/Upsight;->isSdkEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {p1}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v6

    .line 55
    .local v6, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v7, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "referrer"

    .line 56
    invoke-static {v6, v7}, Lcom/upsight/android/internal/util/PreferencesHelper;->contains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 57
    const-string v7, "referrer"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "referrer":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/upsight/android/analytics/internal/referrer/InstallReferrerReceiver;->parseReferrerParams(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 60
    .local v3, "params":Lorg/json/JSONObject;
    const-string v7, "referrer"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/upsight/android/internal/util/PreferencesHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v7, "utm_source"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "source":Ljava/lang/String;
    const-string v7, "utm_campaign"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "campaign":Ljava/lang/String;
    const-string v7, "utm_content"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "creative":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 67
    :cond_2
    invoke-static {}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent;->createBuilder()Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    move-result-object v7

    .line 68
    invoke-virtual {v7, v5}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->setAttributionSource(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    move-result-object v7

    .line 69
    invoke-virtual {v7, v0}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->setAttributionCampaign(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    move-result-object v7

    .line 70
    invoke-virtual {v7, v1}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->setAttributionCreative(Ljava/lang/String;)Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;

    move-result-object v7

    .line 71
    invoke-virtual {v7, v6}, Lcom/upsight/android/analytics/event/install/UpsightInstallAttributionEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 73
    .end local v0    # "campaign":Ljava/lang/String;
    .end local v1    # "creative":Ljava/lang/String;
    .end local v3    # "params":Lorg/json/JSONObject;
    .end local v5    # "source":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 74
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v6}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v7

    const-string v8, "Upsight"

    const-string v9, "Failed to parse referrer parameters from com.android.vending.INSTALL_REFERRER"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-interface {v7, v8, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 73
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method parseReferrerParams(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "paramString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 89
    .local v1, "params":Lorg/json/JSONObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 90
    new-instance v2, Landroid/net/UrlQuerySanitizer;

    invoke-direct {v2}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 91
    .local v2, "parser":Landroid/net/UrlQuerySanitizer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/UrlQuerySanitizer;->setAllowUnregisteredParamaters(Z)V

    .line 92
    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/UrlQuerySanitizer;->parseQuery(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2}, Landroid/net/UrlQuerySanitizer;->getParameterSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 94
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 97
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "parser":Landroid/net/UrlQuerySanitizer;
    :cond_0
    return-object v1
.end method
