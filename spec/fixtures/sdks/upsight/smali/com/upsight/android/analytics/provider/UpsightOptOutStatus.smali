.class public abstract Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;
.super Ljava/lang/Object;
.source "UpsightOptOutStatus.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/upsight/android/UpsightContext;)Z
    .locals 6
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string v2, "com.upsight.extension.analytics"

    invoke-virtual {p0, v2}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 38
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getOptOutStatus()Z

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    const-string v3, "Upsight"

    const-string v4, "com.upsight.extension.analytics must be registered in your Android Manifest"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static get(Lcom/upsight/android/analytics/provider/UpsightSessionContext;)Z
    .locals 1
    .param p0, "upsight"    # Lcom/upsight/android/analytics/provider/UpsightSessionContext;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/upsight/android/analytics/provider/UpsightSessionContext;->getUpsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get(Lcom/upsight/android/UpsightContext;)Z

    move-result v0

    return v0
.end method

.method public static set(Lcom/upsight/android/UpsightContext;Z)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "optOut"    # Z

    .prologue
    .line 23
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 24
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->setOptOutStatus(Z)V

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static set(Lcom/upsight/android/analytics/provider/UpsightSessionContext;Z)V
    .locals 1
    .param p0, "upsight"    # Lcom/upsight/android/analytics/provider/UpsightSessionContext;
    .param p1, "optOut"    # Z

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/upsight/android/analytics/provider/UpsightSessionContext;->getUpsightContext()Lcom/upsight/android/UpsightContext;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->set(Lcom/upsight/android/UpsightContext;Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public abstract get()Z
.end method

.method public abstract set(Z)V
.end method
