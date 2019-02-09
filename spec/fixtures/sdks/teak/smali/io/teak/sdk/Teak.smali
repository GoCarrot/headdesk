.class public Lio/teak/sdk/Teak;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/Teak$a;
    }
.end annotation


# static fields
.field public static Instance:Lio/teak/sdk/TeakInstance; = null

.field public static final JOB_ID:I = 0x74000000

.field public static final LAUNCHED_FROM_NOTIFICATION_INTENT:Ljava/lang/String; = "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

.field static final LOG_TAG:Ljava/lang/String; = "Teak"

.field public static final MajorMinorRevision:[I

.field public static final OPT_OUT_FACEBOOK:Ljava/lang/String; = "opt_out_facebook"

.field public static final OPT_OUT_IDFA:Ljava/lang/String; = "opt_out_idfa"

.field public static final OPT_OUT_PUSH_KEY:Ljava/lang/String; = "opt_out_push_key"

.field public static final PREFERENCES_FILE:Ljava/lang/String; = "io.teak.sdk.Preferences"

.field public static final REWARD_CLAIM_ATTEMPT:Ljava/lang/String; = "io.teak.sdk.Teak.intent.REWARD_CLAIM_ATTEMPT"

.field public static final SDKVersion:Ljava/lang/String; = "2.0.1"

.field public static final TEAK_NOTIFICATIONS_DISABLED:I = 0x1

.field public static final TEAK_NOTIFICATIONS_ENABLED:I = 0x0

.field public static final TEAK_NOTIFICATIONS_UNKNOWN:I = -0x1

.field public static final Version:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static asyncExecutor:Ljava/util/concurrent/ExecutorService;

.field public static forceDebug:Z

.field public static jsonLogIndentation:I

.field public static log:Lio/teak/sdk/f;

.field private static final sdkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static waitForDeepLink:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    sput-object v0, Lio/teak/sdk/Teak;->sdkMap:Ljava/util/Map;

    const-string v1, "android"

    const-string v2, "2.0.1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lio/teak/sdk/Teak;->sdkMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/Teak;->Version:Ljava/util/Map;

    .line 69
    const-string v0, "(\\d+)\\.(\\d+)\\.(\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "2.0.1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    new-array v1, v3, [I

    .line 72
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 73
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    .line 74
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v6

    sput-object v1, Lio/teak/sdk/Teak;->MajorMinorRevision:[I

    .line 552
    :goto_0
    sput v4, Lio/teak/sdk/Teak;->jsonLogIndentation:I

    .line 553
    new-instance v0, Lio/teak/sdk/f;

    const-string v1, "Teak"

    sget v2, Lio/teak/sdk/Teak;->jsonLogIndentation:I

    invoke-direct {v0, v1, v2}, Lio/teak/sdk/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    .line 569
    new-instance v0, Lio/teak/sdk/Teak$9;

    invoke-direct {v0}, Lio/teak/sdk/Teak$9;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 603
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 77
    :cond_0
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/teak/sdk/Teak;->MajorMinorRevision:[I

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static checkActivityResultForPurchase(ILandroid/content/Intent;)V
    .locals 2
    .param p0, "resultCode"    # I
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 540
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 541
    sget-object v0, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$8;

    invoke-direct {v1, p0, p1}, Lio/teak/sdk/Teak$8;-><init>(ILandroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 548
    :cond_0
    return-void
.end method

.method public static formatJSONForLogging(Lio/teak/sdk/e/c;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Lio/teak/sdk/e/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e/b;
        }
    .end annotation

    .prologue
    .line 556
    sget v0, Lio/teak/sdk/Teak;->jsonLogIndentation:I

    if-lez v0, :cond_0

    .line 557
    sget v0, Lio/teak/sdk/Teak;->jsonLogIndentation:I

    invoke-virtual {p0, v0}, Lio/teak/sdk/e/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getAppConfiguration()Ljava/lang/String;
    .locals 4

    .prologue
    .line 393
    const-string v0, "appConfiguration"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "appId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "apiKey"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "appVersion"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "bundleId"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "installerPackage"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "targetSdkVersion"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/teak/sdk/Teak;->getConfiguration(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConfiguration(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "subConfiguration"    # Ljava/lang/String;
    .param p1, "configurationElements"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 404
    :try_start_0
    invoke-static {}, Lio/teak/sdk/n;->a()Lio/teak/sdk/n;

    move-result-object v1

    .line 407
    const-string v2, "deviceConfiguration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    iget-object v1, v1, Lio/teak/sdk/n;->c:Lio/teak/sdk/a/d;

    invoke-virtual {v1}, Lio/teak/sdk/a/d;->b()Ljava/util/Map;

    move-result-object v1

    move-object v2, v1

    .line 412
    :goto_0
    if-nez v2, :cond_1

    .line 422
    :goto_1
    return-object v0

    .line 409
    :cond_0
    const-string v2, "appConfiguration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 410
    iget-object v1, v1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    invoke-virtual {v1}, Lio/teak/sdk/a/a;->a()Ljava/util/Map;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 414
    :cond_1
    new-instance v3, Lio/teak/sdk/e/c;

    invoke-direct {v3}, Lio/teak/sdk/e/c;-><init>()V

    .line 415
    array-length v4, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v5, p1, v1

    .line 416
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 417
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 415
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 420
    :cond_3
    invoke-virtual {v3}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 422
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method public static getDeviceConfiguration()Ljava/lang/String;
    .locals 4

    .prologue
    .line 375
    const-string v0, "deviceConfiguration"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "deviceId"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "deviceManufacturer"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "deviceModel"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "deviceFallback"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "platformString"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "memoryClass"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "advertisingId"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "limitAdTracking"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lio/teak/sdk/Teak;->getConfiguration(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationStatus()I
    .locals 3

    .prologue
    .line 289
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-nez v0, :cond_0

    .line 290
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "error.getNotificationStatus"

    const-string v2, "getNotificationStatus() should not be called before onCreate()"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v0, -0x1

    .line 293
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v0}, Lio/teak/sdk/TeakInstance;->getNotificationStatus()I

    move-result v0

    goto :goto_0
.end method

.method public static identifyUser(Ljava/lang/String;)V
    .locals 2
    .param p0, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/Teak$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 196
    :cond_0
    return-void
.end method

.method public static identifyUser(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "userIdentifier"    # Ljava/lang/String;
    .param p1, "optOut"    # [Ljava/lang/String;

    .prologue
    .line 236
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$2;

    invoke-direct {v1, p0, p1}, Lio/teak/sdk/Teak$2;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 244
    :cond_0
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v0}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 161
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "lifecycle"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "callback"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "onActivityResult"

    aput-object v4, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    if-eqz p2, :cond_0

    .line 164
    invoke-static {p1, p2}, Lio/teak/sdk/Teak;->checkActivityResultForPurchase(ILandroid/content/Intent;)V

    .line 166
    :cond_0
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/teak/sdk/Teak;->onCreate(Landroid/app/Activity;Lio/teak/sdk/d;)V

    .line 106
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;Lio/teak/sdk/d;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "objectFactory"    # Lio/teak/sdk/d;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 116
    invoke-static {p0}, Lio/teak/sdk/e;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    if-nez p1, :cond_2

    .line 123
    :try_start_0
    new-instance v0, Lio/teak/sdk/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/a;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local p1    # "objectFactory":Lio/teak/sdk/d;
    .local v0, "objectFactory":Lio/teak/sdk/d;
    move-object p1, v0

    .line 130
    .end local v0    # "objectFactory":Lio/teak/sdk/d;
    .restart local p1    # "objectFactory":Lio/teak/sdk/d;
    :cond_2
    invoke-interface {p1}, Lio/teak/sdk/d;->b()Lio/teak/sdk/d/f;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_3

    .line 133
    const-string v2, "io_teak_wrapper_sdk_name"

    invoke-interface {v1, v2}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    const-string v3, "io_teak_wrapper_sdk_version"

    invoke-interface {v1, v3}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 136
    sget-object v3, Lio/teak/sdk/Teak;->sdkMap:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_3
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-nez v1, :cond_0

    .line 143
    :try_start_1
    new-instance v1, Lio/teak/sdk/TeakInstance;

    invoke-direct {v1, p0, p1}, Lio/teak/sdk/TeakInstance;-><init>(Landroid/app/Activity;Lio/teak/sdk/d;)V

    sput-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0

    .line 125
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 174
    sget-object v0, Lio/teak/sdk/Teak;->sdkMap:Ljava/util/Map;

    const-string v1, "adobeAir"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "deprecation.onNewIntent"

    const-string v2, "Teak.onNewIntent is deprecated, call Activity.onNewIntent() instead."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method public static openSettingsAppToThisAppsSettings()Z
    .locals 3

    .prologue
    .line 307
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-nez v0, :cond_0

    .line 308
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "error.openSettingsAppToThisAppsSettings"

    const-string v2, "openSettingsAppToThisAppsSettings() should not be called before onCreate()"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const/4 v0, 0x0

    .line 311
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v0}, Lio/teak/sdk/TeakInstance;->openSettingsAppToThisAppsSettings()Z

    move-result v0

    goto :goto_0
.end method

.method public static pluginPurchaseFailed(ILjava/lang/String;)V
    .locals 3
    .param p0, "errorCode"    # I
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 524
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 526
    const-string v1, "iap_plugin"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    sget-object v1, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/Teak$7;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/Teak$7;-><init>(ILjava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 535
    :cond_0
    return-void
.end method

.method public static pluginPurchaseSucceeded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "pluginName"    # Ljava/lang/String;

    .prologue
    .line 503
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 504
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "purchase."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 506
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$6;

    invoke-direct {v1, p1, p0}, Lio/teak/sdk/Teak$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 517
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static registerDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V
    .locals 0
    .param p0, "route"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "description"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "call"    # Lio/teak/sdk/Teak$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 443
    invoke-static {p0, p1, p2, p3}, Lio/teak/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V

    .line 444
    return-void
.end method

.method public static setApplicationBadgeNumber(I)Z
    .locals 3
    .param p0, "count"    # I

    .prologue
    .line 324
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "error.setApplicationBadgeNumber"

    const-string v2, "setApplicationBadgeNumber() should not be called before onCreate()"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v0, 0x0

    .line 328
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v0, p0}, Lio/teak/sdk/TeakInstance;->setApplicationBadgeNumber(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setNumericAttribute(Ljava/lang/String;D)V
    .locals 3
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # D

    .prologue
    .line 340
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 341
    sget-object v0, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$4;

    invoke-direct {v1, p0, p1, p2}, Lio/teak/sdk/Teak$4;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 348
    :cond_0
    return-void
.end method

.method public static setStringAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 358
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 359
    sget-object v0, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$5;

    invoke-direct {v1, p0, p1}, Lio/teak/sdk/Teak$5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 366
    :cond_0
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "actionId"    # Ljava/lang/String;
    .param p1, "objectTypeId"    # Ljava/lang/String;
    .param p2, "objectInstanceId"    # Ljava/lang/String;

    .prologue
    .line 255
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lio/teak/sdk/Teak;->asyncExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$3;

    invoke-direct {v1, p0, p1, p2}, Lio/teak/sdk/Teak$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 263
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "inContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 480
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 482
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 483
    if-nez v1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    sget-object v2, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-nez v2, :cond_2

    invoke-static {v0}, Lio/teak/sdk/b/f;->b(Landroid/content/Context;)Lio/teak/sdk/b/f;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    sget-object v2, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v2, :cond_3

    sget-object v2, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    invoke-virtual {v2}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 490
    :cond_3
    const-string v2, ".intent.TEAK_NOTIFICATION_OPENED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 491
    new-instance v1, Lio/teak/sdk/c/j;

    const-string v2, "PushNotificationEvent.Interaction"

    invoke-direct {v1, v2, v0, p2}, Lio/teak/sdk/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    goto :goto_0

    .line 492
    :cond_4
    const-string v2, ".intent.TEAK_NOTIFICATION_CLEARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    new-instance v1, Lio/teak/sdk/c/j;

    const-string v2, "PushNotificationEvent.Cleared"

    invoke-direct {v1, v2, v0, p2}, Lio/teak/sdk/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    goto :goto_0
.end method
