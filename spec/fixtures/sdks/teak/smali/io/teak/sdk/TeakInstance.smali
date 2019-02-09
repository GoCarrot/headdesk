.class public Lio/teak/sdk/TeakInstance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/TeakInstance$a;
    }
.end annotation


# static fields
.field private static final PREFERENCE_FIRST_RUN:Ljava/lang/String; = "io.teak.sdk.Preferences.FirstRun"


# instance fields
.field private final activityHashCode:I

.field private appRaven:Lio/teak/sdk/f/a;

.field private appStore:Lio/teak/sdk/h/c;

.field private final context:Landroid/content/Context;

.field public final dispatcher:Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;

.field private facebookAccessTokenBroadcast:Lio/teak/sdk/b;

.field public final lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field public final objectFactory:Lio/teak/sdk/d;

.field sdkRaven:Lio/teak/sdk/f/a;

.field private state:Lio/teak/sdk/TeakInstance$a;

.field private final stateMutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lio/teak/sdk/d;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "objectFactory"    # Lio/teak/sdk/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ObsoleteSdkInt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    sget-object v0, Lio/teak/sdk/TeakInstance$a;->b:Lio/teak/sdk/TeakInstance$a;

    iput-object v0, p0, Lio/teak/sdk/TeakInstance;->state:Lio/teak/sdk/TeakInstance$a;

    .line 286
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/TeakInstance;->stateMutex:Ljava/lang/Object;

    .line 346
    new-instance v0, Lio/teak/sdk/TeakInstance$5;

    invoke-direct {v0, p0}, Lio/teak/sdk/TeakInstance$5;-><init>(Lio/teak/sdk/TeakInstance;)V

    iput-object v0, p0, Lio/teak/sdk/TeakInstance;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "null Activity passed to Teak.onCreate"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lio/teak/sdk/TeakInstance;->activityHashCode:I

    .line 61
    iput-object p2, p0, Lio/teak/sdk/TeakInstance;->objectFactory:Lio/teak/sdk/d;

    .line 62
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-static {v0}, Lio/teak/sdk/push/b;->a(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;

    new-instance v1, Lcom/firebase/jobdispatcher/GooglePlayDriver;

    iget-object v2, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/firebase/jobdispatcher/GooglePlayDriver;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;-><init>(Lcom/firebase/jobdispatcher/Driver;)V

    iput-object v0, p0, Lio/teak/sdk/TeakInstance;->dispatcher:Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;

    .line 68
    new-instance v0, Lio/teak/sdk/TeakInstance$1;

    invoke-direct {v0, p0, p2}, Lio/teak/sdk/TeakInstance$1;-><init>(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/d;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 76
    new-instance v0, Lio/teak/sdk/TeakInstance$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/TeakInstance$2;-><init>(Lio/teak/sdk/TeakInstance;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 97
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    iget-object v1, p0, Lio/teak/sdk/TeakInstance;->objectFactory:Lio/teak/sdk/d;

    invoke-static {v0, v1}, Lio/teak/sdk/n;->a(Landroid/content/Context;Lio/teak/sdk/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    sget-object v0, Lio/teak/sdk/TeakInstance$a;->a:Lio/teak/sdk/TeakInstance$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/TeakInstance;->setState(Lio/teak/sdk/TeakInstance$a;)Z

    .line 115
    :goto_0
    return-void

    .line 103
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 104
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "api_level"

    const-string v2, "Teak requires API level 14 to operate. Teak is disabled."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lio/teak/sdk/TeakInstance$a;->a:Lio/teak/sdk/TeakInstance$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/TeakInstance;->setState(Lio/teak/sdk/TeakInstance$a;)Z

    goto :goto_0

    .line 108
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lio/teak/sdk/TeakInstance;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    .line 112
    sget-object v0, Lio/teak/sdk/TeakInstance$a;->a:Lio/teak/sdk/TeakInstance$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/TeakInstance;->setState(Lio/teak/sdk/TeakInstance$a;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lio/teak/sdk/TeakInstance;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;

    .prologue
    .line 45
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/f/a;
    .locals 1
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;

    .prologue
    .line 45
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->appRaven:Lio/teak/sdk/f/a;

    return-object v0
.end method

.method static synthetic access$102(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/f/a;)Lio/teak/sdk/f/a;
    .locals 0
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;
    .param p1, "x1"    # Lio/teak/sdk/f/a;

    .prologue
    .line 45
    iput-object p1, p0, Lio/teak/sdk/TeakInstance;->appRaven:Lio/teak/sdk/f/a;

    return-object p1
.end method

.method static synthetic access$200(Lio/teak/sdk/TeakInstance;)I
    .locals 1
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;

    .prologue
    .line 45
    iget v0, p0, Lio/teak/sdk/TeakInstance;->activityHashCode:I

    return v0
.end method

.method static synthetic access$300(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/TeakInstance$a;)Z
    .locals 1
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;
    .param p1, "x1"    # Lio/teak/sdk/TeakInstance$a;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lio/teak/sdk/TeakInstance;->setState(Lio/teak/sdk/TeakInstance$a;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lio/teak/sdk/TeakInstance;)Lio/teak/sdk/h/c;
    .locals 1
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;

    .prologue
    .line 45
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    return-object v0
.end method

.method static synthetic access$402(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/h/c;)Lio/teak/sdk/h/c;
    .locals 0
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;
    .param p1, "x1"    # Lio/teak/sdk/h/c;

    .prologue
    .line 45
    iput-object p1, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    return-object p1
.end method

.method static synthetic access$502(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/b;)Lio/teak/sdk/b;
    .locals 0
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;
    .param p1, "x1"    # Lio/teak/sdk/b;

    .prologue
    .line 45
    iput-object p1, p0, Lio/teak/sdk/TeakInstance;->facebookAccessTokenBroadcast:Lio/teak/sdk/b;

    return-object p1
.end method

.method static synthetic access$600(Lio/teak/sdk/TeakInstance;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lio/teak/sdk/TeakInstance;->cleanup(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$700(Lio/teak/sdk/TeakInstance;)V
    .locals 0
    .param p0, "x0"    # Lio/teak/sdk/TeakInstance;

    .prologue
    .line 45
    invoke-direct {p0}, Lio/teak/sdk/TeakInstance;->registerTeakInternalDeepLinks()V

    return-void
.end method

.method private cleanup(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    invoke-interface {v0}, Lio/teak/sdk/h/c;->a()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    .line 123
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->facebookAccessTokenBroadcast:Lio/teak/sdk/b;

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->facebookAccessTokenBroadcast:Lio/teak/sdk/b;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/teak/sdk/b;->a(Landroid/content/Context;)V

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/TeakInstance;->lifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 128
    return-void
.end method

.method private registerTeakInternalDeepLinks()V
    .locals 4

    .prologue
    .line 477
    const-string v0, "/teak_internal/store/:sku"

    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lio/teak/sdk/TeakInstance$6;

    invoke-direct {v3, p0}, Lio/teak/sdk/TeakInstance$6;-><init>(Lio/teak/sdk/TeakInstance;)V

    invoke-static {v0, v1, v2, v3}, Lio/teak/sdk/Teak;->registerDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V

    .line 486
    const-string v0, "/teak_internal/companion"

    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lio/teak/sdk/TeakInstance$7;

    invoke-direct {v3, p0}, Lio/teak/sdk/TeakInstance$7;-><init>(Lio/teak/sdk/TeakInstance;)V

    invoke-static {v0, v1, v2, v3}, Lio/teak/sdk/Teak;->registerDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V

    .line 525
    return-void
.end method

.method private setState(Lio/teak/sdk/TeakInstance$a;)Z
    .locals 8
    .param p1, "newState"    # Lio/teak/sdk/TeakInstance$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 295
    iget-object v2, p0, Lio/teak/sdk/TeakInstance;->stateMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_0
    iget-object v3, p0, Lio/teak/sdk/TeakInstance;->state:Lio/teak/sdk/TeakInstance$a;

    if-ne v3, p1, :cond_0

    .line 297
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "teak.state_duplicate"

    const-string v4, "Teak State transition to same state (%s). Ignoring."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/teak/sdk/TeakInstance;->state:Lio/teak/sdk/TeakInstance$a;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    monitor-exit v2

    .line 310
    :goto_0
    return v0

    .line 301
    :cond_0
    iget-object v3, p0, Lio/teak/sdk/TeakInstance;->state:Lio/teak/sdk/TeakInstance$a;

    invoke-virtual {v3, p1}, Lio/teak/sdk/TeakInstance$a;->a(Lio/teak/sdk/TeakInstance$a;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 302
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "teak.state_invalid"

    const-string v4, "Invalid Teak State transition (%s -> %s). Ignoring."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/teak/sdk/TeakInstance;->state:Lio/teak/sdk/TeakInstance$a;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    monitor-exit v2

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 306
    :cond_1
    :try_start_1
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v3, "teak.state"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "old_state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lio/teak/sdk/TeakInstance;->state:Lio/teak/sdk/TeakInstance$a;

    iget-object v6, v6, Lio/teak/sdk/TeakInstance$a;->g:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "state"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p1, Lio/teak/sdk/TeakInstance$a;->g:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 308
    iput-object p1, p0, Lio/teak/sdk/TeakInstance;->state:Lio/teak/sdk/TeakInstance$a;

    .line 310
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method checkActivityResultForPurchase(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 331
    invoke-virtual {p0}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    invoke-interface {v0, p1, p2}, Lio/teak/sdk/h/c;->a(ILandroid/content/Intent;)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "purchase.failed.error"

    const-string v2, "Unable to checkActivityResultForPurchase, no active app store."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getNotificationStatus()I
    .locals 1

    .prologue
    .line 201
    invoke-static {}, Lio/teak/sdk/push/b;->a()Lio/teak/sdk/push/b;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/push/b;->b()I

    move-result v0

    return v0
.end method

.method identifyUser(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5
    .param p1, "userIdentifier"    # Ljava/lang/String;
    .param p2, "optOut"    # [Ljava/lang/String;

    .prologue
    .line 133
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "identify_user.error"

    const-string v2, "User identifier can not be null or empty."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "identify_user"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "optOut"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 140
    invoke-virtual {p0}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Lio/teak/sdk/c/o;

    invoke-direct {v0, p1, p2}, Lio/teak/sdk/c/o;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    goto :goto_0
.end method

.method isEnabled()Z
    .locals 3

    .prologue
    .line 289
    iget-object v1, p0, Lio/teak/sdk/TeakInstance;->stateMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 290
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->state:Lio/teak/sdk/TeakInstance$a;

    sget-object v2, Lio/teak/sdk/TeakInstance$a;->a:Lio/teak/sdk/TeakInstance$a;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public jobBuilder(Ljava/lang/String;Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/Job$Builder;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 530
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->dispatcher:Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;

    invoke-virtual {v0}, Lcom/firebase/jobdispatcher/FirebaseJobDispatcher;->newJobBuilder()Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    const-class v1, Lio/teak/sdk/service/JobService;

    .line 531
    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/Job$Builder;->setService(Ljava/lang/Class;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    .line 532
    invoke-virtual {v0, p1}, Lcom/firebase/jobdispatcher/Job$Builder;->setTag(Ljava/lang/String;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    .line 533
    invoke-virtual {v0, p2}, Lcom/firebase/jobdispatcher/Job$Builder;->setExtras(Landroid/os/Bundle;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    sget-object v1, Lcom/firebase/jobdispatcher/Trigger;->NOW:Lcom/firebase/jobdispatcher/JobTrigger$ImmediateTrigger;

    .line 534
    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/Job$Builder;->setTrigger(Lcom/firebase/jobdispatcher/JobTrigger;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 535
    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/Job$Builder;->setReplaceCurrent(Z)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    sget-object v1, Lcom/firebase/jobdispatcher/RetryStrategy;->DEFAULT_LINEAR:Lcom/firebase/jobdispatcher/RetryStrategy;

    .line 536
    invoke-virtual {v0, v1}, Lcom/firebase/jobdispatcher/Job$Builder;->setRetryStrategy(Lcom/firebase/jobdispatcher/RetryStrategy;)Lcom/firebase/jobdispatcher/Job$Builder;

    move-result-object v0

    .line 530
    return-object v0
.end method

.method openSettingsAppToThisAppsSettings()Z
    .locals 4

    .prologue
    .line 205
    const/4 v0, 0x0

    .line 207
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 208
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 209
    const-string v2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v2, "android.provider.extra.CHANNEL_ID"

    iget-object v3, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-static {v3}, Lio/teak/sdk/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v2, "android.provider.extra.APP_PACKAGE"

    iget-object v3, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    :cond_0
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    iget-object v2, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 226
    const/4 v0, 0x1

    .line 230
    :goto_1
    return v0

    .line 212
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_2

    .line 213
    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v2, "android.provider.extra.APP_PACKAGE"

    iget-object v3, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    .line 228
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v2, v1}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 215
    :cond_2
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 216
    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "app_package"

    iget-object v3, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const-string v2, "app_uid"

    iget-object v3, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 219
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    .line 220
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method purchaseFailed(ILjava/util/Map;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lio/teak/sdk/c/i;

    invoke-direct {v0, p1, p2}, Lio/teak/sdk/c/i;-><init>(ILjava/util/Map;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 328
    return-void
.end method

.method purchaseSucceeded(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .param p1, "purchaseString"    # Ljava/lang/String;
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p2, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->appStore:Lio/teak/sdk/h/c;

    invoke-interface {v0, p1, p2}, Lio/teak/sdk/h/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "purchase.succeeded.error"

    const-string v2, "Unable to process purchaseSucceeded, no active app store."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setApplicationBadgeNumber(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 237
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/TeakInstance;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/teak/sdk/g/c;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    const/4 v0, 0x1

    .line 240
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method setNumericAttribute(Ljava/lang/String;D)V
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # D

    .prologue
    .line 177
    new-instance v0, Lio/teak/sdk/TeakInstance$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lio/teak/sdk/TeakInstance$3;-><init>(Lio/teak/sdk/TeakInstance;Ljava/lang/String;D)V

    invoke-static {v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$a;)V

    .line 185
    return-void
.end method

.method setStringAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/String;

    .prologue
    .line 188
    new-instance v0, Lio/teak/sdk/TeakInstance$4;

    invoke-direct {v0, p0, p1, p2}, Lio/teak/sdk/TeakInstance$4;-><init>(Lio/teak/sdk/TeakInstance;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$a;)V

    .line 196
    return-void
.end method

.method trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "actionId"    # Ljava/lang/String;
    .param p2, "objectTypeId"    # Ljava/lang/String;
    .param p3, "objectInstanceId"    # Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "track_event.error"

    const-string v2, "actionId can not be null or empty for trackEvent(), ignoring."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_3

    .line 154
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    :cond_3
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "track_event.error"

    const-string v2, "objectTypeId can not be null or empty if objectInstanceId is present for trackEvent(), ignoring."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_4
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "track_event"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "actionId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, "objectTypeId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    const/4 v3, 0x4

    const-string v4, "objectInstanceId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    invoke-static {v2}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 161
    invoke-virtual {p0}, Lio/teak/sdk/TeakInstance;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    const-string v1, "action_type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 165
    const-string v1, "object_type"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_5
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 168
    const-string v1, "object_instance_id"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_6
    new-instance v1, Lio/teak/sdk/c/n;

    invoke-direct {v1, v0}, Lio/teak/sdk/c/n;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    goto :goto_0
.end method
