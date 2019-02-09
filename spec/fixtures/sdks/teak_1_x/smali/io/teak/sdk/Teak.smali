.class public Lio/teak/sdk/Teak;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/Teak$a;
    }
.end annotation


# static fields
.field public static final GCM_RECEIVE_INTENT_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final GCM_REGISTRATION_INTENT_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field public static Instance:Lio/teak/sdk/o; = null

.field public static final LAUNCHED_FROM_NOTIFICATION_INTENT:Ljava/lang/String; = "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

.field public static final MajorMinorRevision:[I

.field public static final PREFERENCES_FILE:Ljava/lang/String; = "io.teak.sdk.Preferences"

.field public static final REWARD_CLAIM_ATTEMPT:Ljava/lang/String; = "io.teak.sdk.Teak.intent.REWARD_CLAIM_ATTEMPT"

.field public static final SDKVersion:Ljava/lang/String; = "0.16.0"

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

.field private static final a:Ljava/util/Map;
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

.field private static b:Ljava/util/concurrent/ExecutorService;

.field public static forceDebug:Z

.field public static jsonLogIndentation:I

.field public static log:Lio/teak/sdk/e;

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

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 76
    sput-object v0, Lio/teak/sdk/Teak;->a:Ljava/util/Map;

    const-string v1, "android"

    const-string v2, "0.16.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lio/teak/sdk/Teak;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/Teak;->Version:Ljava/util/Map;

    .line 79
    const-string v0, "(\\d+)\\.(\\d+)\\.(\\d+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "0.16.0"

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    new-array v1, v3, [I

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v4

    .line 83
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v5

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v6

    sput-object v1, Lio/teak/sdk/Teak;->MajorMinorRevision:[I

    .line 524
    :goto_0
    sput v4, Lio/teak/sdk/Teak;->jsonLogIndentation:I

    .line 525
    new-instance v0, Lio/teak/sdk/e;

    const-string v1, "Teak"

    sget v2, Lio/teak/sdk/Teak;->jsonLogIndentation:I

    invoke-direct {v0, v1, v2}, Lio/teak/sdk/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    .line 541
    new-instance v0, Lio/teak/sdk/Teak$9;

    invoke-direct {v0}, Lio/teak/sdk/Teak$9;-><init>()V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 575
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    return-void

    .line 87
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
    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 377
    return-void
.end method

.method private static a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 352
    :try_start_0
    invoke-static {}, Lio/teak/sdk/m;->a()Lio/teak/sdk/m;

    move-result-object v1

    .line 355
    const-string v2, "deviceConfiguration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    iget-object v1, v1, Lio/teak/sdk/m;->c:Lio/teak/sdk/a/c;

    invoke-virtual {v1}, Lio/teak/sdk/a/c;->b()Ljava/util/Map;

    move-result-object v1

    move-object v2, v1

    .line 360
    :goto_0
    if-nez v2, :cond_1

    .line 370
    :goto_1
    return-object v0

    .line 357
    :cond_0
    const-string v2, "appConfiguration"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 358
    iget-object v1, v1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    invoke-virtual {v1}, Lio/teak/sdk/a/a;->a()Ljava/util/Map;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 362
    :cond_1
    new-instance v3, Lio/teak/sdk/e/c;

    invoke-direct {v3}, Lio/teak/sdk/e/c;-><init>()V

    .line 363
    array-length v4, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v4, :cond_3

    aget-object v5, p1, v1

    .line 364
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 363
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 368
    :cond_3
    invoke-virtual {v3}, Lio/teak/sdk/e/c;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 370
    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method public static checkActivityResultForPurchase(ILandroid/content/Intent;)V
    .locals 2
    .param p0, "resultCode"    # I
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 512
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$8;

    invoke-direct {v1, p0, p1}, Lio/teak/sdk/Teak$8;-><init>(ILandroid/content/Intent;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 520
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
    .line 528
    sget v0, Lio/teak/sdk/Teak;->jsonLogIndentation:I

    if-lez v0, :cond_0

    .line 529
    sget v0, Lio/teak/sdk/Teak;->jsonLogIndentation:I

    invoke-virtual {p0, v0}, Lio/teak/sdk/e/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 531
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
    .line 340
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

    invoke-static {v0, v1}, Lio/teak/sdk/Teak;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceConfiguration()Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
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

    invoke-static {v0, v1}, Lio/teak/sdk/Teak;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static identifyUser(Ljava/lang/String;)V
    .locals 2
    .param p0, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 197
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/Teak$1;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 205
    :cond_0
    return-void
.end method

.method public static isEnabled()Z
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    invoke-virtual {v0}, Lio/teak/sdk/o;->c()Z

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
    .line 170
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 172
    if-eqz p2, :cond_0

    .line 173
    invoke-static {p1, p2}, Lio/teak/sdk/Teak;->checkActivityResultForPurchase(ILandroid/content/Intent;)V

    .line 175
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
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/teak/sdk/Teak;->onCreate(Landroid/app/Activity;Lio/teak/sdk/c;)V

    .line 116
    return-void
.end method

.method public static onCreate(Landroid/app/Activity;Lio/teak/sdk/c;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "objectFactory"    # Lio/teak/sdk/c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 126
    invoke-static {p0}, Lio/teak/sdk/d;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    if-nez p1, :cond_2

    .line 133
    :try_start_0
    new-instance v0, Lio/teak/sdk/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/teak/sdk/a;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local p1    # "objectFactory":Lio/teak/sdk/c;
    .local v0, "objectFactory":Lio/teak/sdk/c;
    move-object p1, v0

    .line 140
    .end local v0    # "objectFactory":Lio/teak/sdk/c;
    .restart local p1    # "objectFactory":Lio/teak/sdk/c;
    :cond_2
    invoke-interface {p1}, Lio/teak/sdk/c;->b()Lio/teak/sdk/d/f;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    const-string v2, "io_teak_wrapper_sdk_name"

    invoke-interface {v1, v2}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    const-string v3, "io_teak_wrapper_sdk_version"

    invoke-interface {v1, v3}, Lio/teak/sdk/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 145
    sget-object v3, Lio/teak/sdk/Teak;->a:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_3
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-nez v1, :cond_0

    .line 152
    :try_start_1
    new-instance v1, Lio/teak/sdk/o;

    invoke-direct {v1, p0, p1}, Lio/teak/sdk/o;-><init>(Landroid/app/Activity;Lio/teak/sdk/c;)V

    sput-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v1

    goto :goto_0

    .line 135
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lio/teak/sdk/Teak;->a:Ljava/util/Map;

    const-string v1, "adobeAir"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "deprecation.onNewIntent"

    const-string v2, "Teak.onNewIntent is deprecated, call Activity.onNewIntent() instead."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static openIABPurchaseSucceeded(Ljava/lang/String;)V
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 459
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 460
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "purchase.open_iab"

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 462
    const-string v1, "originalJson"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 463
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v1, :cond_0

    .line 464
    sget-object v1, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lio/teak/sdk/Teak$5;

    invoke-direct {v2, v0}, Lio/teak/sdk/Teak$5;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    .line 472
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static openSettingsAppToThisAppsSettings()Z
    .locals 3

    .prologue
    .line 253
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "error.openSettingsAppToThisAppsSettings"

    const-string v2, "openSettingsAppToThisAppsSettings() should not be called before onCreate()"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v0, 0x0

    .line 257
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    invoke-virtual {v0}, Lio/teak/sdk/o;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public static pluginPurchaseFailed(I)V
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 499
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    .line 500
    sget-object v0, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$7;

    invoke-direct {v1, p0}, Lio/teak/sdk/Teak$7;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 507
    :cond_0
    return-void
.end method

.method public static prime31PurchaseSucceeded(Ljava/lang/String;)V
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 480
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p0}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V

    .line 481
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "purchase.prime_31"

    invoke-virtual {v0}, Lio/teak/sdk/e/c;->b()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 483
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$6;

    invoke-direct {v1, p0}, Lio/teak/sdk/Teak$6;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    .line 492
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

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
    .line 391
    invoke-static {p0, p1, p2, p3}, Lio/teak/sdk/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V

    .line 392
    return-void
.end method

.method public static setApplicationBadgeNumber(I)Z
    .locals 3
    .param p0, "count"    # I

    .prologue
    .line 270
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-nez v0, :cond_0

    .line 271
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "error.setApplicationBadgeNumber"

    const-string v2, "setApplicationBadgeNumber() should not be called before onCreate()"

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    invoke-virtual {v0, p0}, Lio/teak/sdk/o;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static setNumericAttribute(Ljava/lang/String;D)V
    .locals 3
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # D

    .prologue
    .line 286
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    .line 287
    sget-object v0, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$3;

    invoke-direct {v1, p0, p1, p2}, Lio/teak/sdk/Teak$3;-><init>(Ljava/lang/String;D)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 294
    :cond_0
    return-void
.end method

.method public static setStringAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "attributeName"    # Ljava/lang/String;
    .param p1, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 304
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$4;

    invoke-direct {v1, p0, p1}, Lio/teak/sdk/Teak$4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 312
    :cond_0
    return-void
.end method

.method public static trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "actionId"    # Ljava/lang/String;
    .param p1, "objectTypeId"    # Ljava/lang/String;
    .param p2, "objectInstanceId"    # Ljava/lang/String;

    .prologue
    .line 216
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lio/teak/sdk/Teak;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lio/teak/sdk/Teak$2;

    invoke-direct {v1, p0, p1, p2}, Lio/teak/sdk/Teak$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 224
    :cond_0
    return-void
.end method

.method public static userHasDisabledNotifications()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 235
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-nez v1, :cond_1

    .line 236
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "error.userHasDisabledNotifications"

    const-string v3, "userHasDisabledNotifications() should not be called before onCreate()"

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    invoke-virtual {v1}, Lio/teak/sdk/o;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "inContext"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 433
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 434
    if-nez v1, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    sget-object v2, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-nez v2, :cond_2

    invoke-static {v0}, Lio/teak/sdk/b/e;->b(Landroid/content/Context;)Lio/teak/sdk/b/e;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_2
    sget-object v2, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    if-eqz v2, :cond_3

    sget-object v2, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    invoke-virtual {v2}, Lio/teak/sdk/o;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    :cond_3
    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 442
    new-instance v1, Lio/teak/sdk/c/j;

    const-string v2, "PushNotificationEvent.Received"

    invoke-direct {v1, v2, v0, p2}, Lio/teak/sdk/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    goto :goto_0

    .line 443
    :cond_4
    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 444
    const-string v0, "registration_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Lio/teak/sdk/c/k;

    const-string v2, "gcm_push_key"

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    goto :goto_0

    .line 446
    :cond_5
    const-string v2, ".intent.TEAK_NOTIFICATION_OPENED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 447
    new-instance v1, Lio/teak/sdk/c/j;

    const-string v2, "PushNotificationEvent.Interaction"

    invoke-direct {v1, v2, v0, p2}, Lio/teak/sdk/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    goto :goto_0

    .line 448
    :cond_6
    const-string v2, ".intent.TEAK_NOTIFICATION_CLEARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    new-instance v1, Lio/teak/sdk/c/j;

    const-string v2, "PushNotificationEvent.Cleared"

    invoke-direct {v1, v2, v0, p2}, Lio/teak/sdk/c/j;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    goto :goto_0
.end method
