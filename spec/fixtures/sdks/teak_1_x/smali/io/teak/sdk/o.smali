.class public final Lio/teak/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/o$a;
    }
.end annotation


# instance fields
.field public final a:Lio/teak/sdk/c;

.field b:Lio/teak/sdk/j;

.field public final c:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final d:Landroid/content/Context;

.field private final e:Landroid/support/v4/app/NotificationManagerCompat;

.field private f:Lio/teak/sdk/j;

.field private g:Lio/teak/sdk/o$a;

.field private final h:Ljava/lang/Object;

.field private i:Lio/teak/sdk/g/c;

.field private final j:I

.field private k:Lio/teak/sdk/b;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lio/teak/sdk/c;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/teak/sdk/c;
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
            Lio/teak/sdk/d$b;
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    sget-object v0, Lio/teak/sdk/o$a;->b:Lio/teak/sdk/o$a;

    iput-object v0, p0, Lio/teak/sdk/o;->g:Lio/teak/sdk/o$a;

    .line 306
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/o;->h:Ljava/lang/Object;

    .line 366
    new-instance v0, Lio/teak/sdk/o$5;

    invoke-direct {v0, p0}, Lio/teak/sdk/o$5;-><init>(Lio/teak/sdk/o;)V

    iput-object v0, p0, Lio/teak/sdk/o;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 58
    const-string v0, "android.support.v4.app.NotificationManagerCompat"

    invoke-static {v0}, Lio/teak/sdk/d;->a(Ljava/lang/String;)V

    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "null Activity passed to Teak.onCreate"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lio/teak/sdk/o;->j:I

    .line 67
    iput-object p2, p0, Lio/teak/sdk/o;->a:Lio/teak/sdk/c;

    .line 68
    invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/o;->e:Landroid/support/v4/app/NotificationManagerCompat;

    .line 71
    new-instance v0, Lio/teak/sdk/o$1;

    invoke-direct {v0, p0, p2}, Lio/teak/sdk/o$1;-><init>(Lio/teak/sdk/o;Lio/teak/sdk/c;)V

    invoke-static {v0}, Lio/teak/sdk/m;->a(Lio/teak/sdk/m$a;)V

    .line 79
    new-instance v0, Lio/teak/sdk/o$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/o$2;-><init>(Lio/teak/sdk/o;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 100
    iget-object v0, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    iget-object v1, p0, Lio/teak/sdk/o;->a:Lio/teak/sdk/c;

    invoke-static {v0, v1}, Lio/teak/sdk/m;->a(Landroid/content/Context;Lio/teak/sdk/c;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    sget-object v0, Lio/teak/sdk/o$a;->a:Lio/teak/sdk/o$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)Z

    .line 117
    :goto_0
    return-void

    .line 105
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 106
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "api_level"

    const-string v2, "Teak requires API level 14 to operate. Teak is disabled."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lio/teak/sdk/o$a;->a:Lio/teak/sdk/o$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)Z

    goto :goto_0

    .line 110
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lio/teak/sdk/o;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 114
    sget-object v0, Lio/teak/sdk/o$a;->a:Lio/teak/sdk/o$a;

    invoke-direct {p0, v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)Z

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/o;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/o;Lio/teak/sdk/b;)Lio/teak/sdk/b;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lio/teak/sdk/o;->k:Lio/teak/sdk/b;

    return-object p1
.end method

.method static synthetic a(Lio/teak/sdk/o;Lio/teak/sdk/g/c;)Lio/teak/sdk/g/c;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    return-object p1
.end method

.method static synthetic a(Lio/teak/sdk/o;Lio/teak/sdk/j;)Lio/teak/sdk/j;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lio/teak/sdk/o;->f:Lio/teak/sdk/j;

    return-object p1
.end method

.method static synthetic a(Lio/teak/sdk/o;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 50
    .line 1120
    iget-object v0, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    invoke-interface {v0}, Lio/teak/sdk/g/c;->a()V

    .line 1122
    const/4 v0, 0x0

    iput-object v0, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    .line 1125
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/o;->k:Lio/teak/sdk/b;

    if-eqz v0, :cond_1

    .line 1126
    iget-object v0, p0, Lio/teak/sdk/o;->k:Lio/teak/sdk/b;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/teak/sdk/b;->a(Landroid/content/Context;)V

    .line 1129
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/o;->c:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    return-void
.end method

.method private a(Lio/teak/sdk/o$a;)Z
    .locals 8
    .param p1    # Lio/teak/sdk/o$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 315
    iget-object v2, p0, Lio/teak/sdk/o;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v3, p0, Lio/teak/sdk/o;->g:Lio/teak/sdk/o$a;

    if-ne v3, p1, :cond_0

    .line 317
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "teak.state_duplicate"

    const-string v4, "Teak State transition to same state (%s). Ignoring."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/teak/sdk/o;->g:Lio/teak/sdk/o$a;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    monitor-exit v2

    .line 330
    :goto_0
    return v0

    .line 321
    :cond_0
    iget-object v3, p0, Lio/teak/sdk/o;->g:Lio/teak/sdk/o$a;

    invoke-virtual {v3, p1}, Lio/teak/sdk/o$a;->a(Lio/teak/sdk/o$a;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 322
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "teak.state_invalid"

    const-string v4, "Invalid Teak State transition (%s -> %s). Ignoring."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lio/teak/sdk/o;->g:Lio/teak/sdk/o$a;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    monitor-exit v2

    goto :goto_0

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 326
    :cond_1
    :try_start_1
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "teak.state"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "old_state"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lio/teak/sdk/o;->g:Lio/teak/sdk/o$a;

    iget-object v6, v6, Lio/teak/sdk/o$a;->g:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "state"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p1, Lio/teak/sdk/o$a;->g:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v4}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 328
    iput-object p1, p0, Lio/teak/sdk/o;->g:Lio/teak/sdk/o$a;

    .line 330
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lio/teak/sdk/o;Lio/teak/sdk/o$a;)Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lio/teak/sdk/o;)Lio/teak/sdk/j;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/teak/sdk/o;->f:Lio/teak/sdk/j;

    return-object v0
.end method

.method static synthetic c(Lio/teak/sdk/o;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lio/teak/sdk/o;->j:I

    return v0
.end method

.method static synthetic d(Lio/teak/sdk/o;)Lio/teak/sdk/g/c;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    return-object v0
.end method

.method static synthetic e(Lio/teak/sdk/o;)V
    .locals 4

    .prologue
    .line 50
    .line 1469
    const-string v0, "/teak_internal/store/:sku"

    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lio/teak/sdk/o$6;

    invoke-direct {v3, p0}, Lio/teak/sdk/o$6;-><init>(Lio/teak/sdk/o;)V

    invoke-static {v0, v1, v2, v3}, Lio/teak/sdk/Teak;->registerDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V

    .line 1478
    const-string v0, "/teak_internal/companion"

    const-string v1, ""

    const-string v2, ""

    new-instance v3, Lio/teak/sdk/o$7;

    invoke-direct {v3, p0}, Lio/teak/sdk/o$7;-><init>(Lio/teak/sdk/o;)V

    invoke-static {v0, v1, v2, v3}, Lio/teak/sdk/Teak;->registerDeepLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/teak/sdk/Teak$a;)V

    .line 50
    return-void
.end method


# virtual methods
.method final a(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 351
    invoke-virtual {p0}, Lio/teak/sdk/o;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    invoke-interface {v0, p1, p2}, Lio/teak/sdk/g/c;->a(ILandroid/content/Intent;)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "purchase.failed.error"

    const-string v2, "Unable to checkActivityResultForPurchase, no active app store."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lio/teak/sdk/o;->i:Lio/teak/sdk/g/c;

    invoke-interface {v0, p1}, Lio/teak/sdk/g/c;->b(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 342
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "purchase.succeeded.error"

    const-string v2, "Unable to process purchaseSucceeded, no active app store."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final a()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 205
    .line 208
    :try_start_0
    const-class v2, Landroid/support/v4/app/NotificationManagerCompat;

    const-string v3, "areNotificationsEnabled"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 214
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/teak/sdk/o;->e:Landroid/support/v4/app/NotificationManagerCompat;

    if-eqz v0, :cond_1

    .line 216
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/o;->e:Landroid/support/v4/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationManagerCompat;->areNotificationsEnabled()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 221
    :cond_1
    :goto_1
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method final a(I)Z
    .locals 1

    .prologue
    .line 257
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/teak/sdk/f/c;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Z
    .locals 4

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 227
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 228
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    .line 229
    const-string v2, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v2, "android.provider.extra.CHANNEL_ID"

    iget-object v3, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    invoke-static {v3}, Lio/teak/sdk/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v2, "android.provider.extra.APP_PACKAGE"

    iget-object v3, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    :cond_0
    :goto_0
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 245
    iget-object v2, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 246
    const/4 v0, 0x1

    .line 250
    :goto_1
    return v0

    .line 232
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_2

    .line 233
    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v2, "android.provider.extra.APP_PACKAGE"

    iget-object v3, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v1

    .line 248
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v2, v1}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 235
    :cond_2
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_3

    .line 236
    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v2, "app_package"

    iget-object v3, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v2, "app_uid"

    iget-object v3, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 239
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    .line 240
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lio/teak/sdk/o;->d:Landroid/content/Context;

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

.method final c()Z
    .locals 3

    .prologue
    .line 309
    iget-object v1, p0, Lio/teak/sdk/o;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/o;->g:Lio/teak/sdk/o$a;

    sget-object v2, Lio/teak/sdk/o$a;->a:Lio/teak/sdk/o$a;

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
