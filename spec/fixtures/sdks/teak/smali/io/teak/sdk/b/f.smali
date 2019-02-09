.class public final Lio/teak/sdk/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/b/c;


# static fields
.field public static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private static b:Lio/teak/sdk/b/f;


# instance fields
.field private final c:Lio/teak/sdk/o$a;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lio/teak/sdk/b/f;->b:Lio/teak/sdk/b/f;

    .line 331
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/b/f;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lio/teak/sdk/b/f$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/f$1;-><init>(Lio/teak/sdk/b/f;)V

    iput-object v0, p0, Lio/teak/sdk/b/f;->c:Lio/teak/sdk/o$a;

    .line 328
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/f;->d:Ljava/util/concurrent/ExecutorService;

    .line 62
    const-string v0, "android.support.v4.content.LocalBroadcastManager"

    invoke-static {v0}, Lio/teak/sdk/e;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/f;->e:Landroid/support/v4/content/LocalBroadcastManager;

    .line 66
    iget-object v0, p0, Lio/teak/sdk/b/f;->c:Lio/teak/sdk/o$a;

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 1073
    invoke-static {}, Lio/teak/sdk/a/e;->a()V

    .line 1074
    invoke-static {}, Lio/teak/sdk/b/e;->a()V

    .line 1075
    invoke-static {}, Lio/teak/sdk/l;->b()V

    .line 69
    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/teak/sdk/b/f;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/e$b;
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lio/teak/sdk/b/f;->b:Lio/teak/sdk/b/f;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lio/teak/sdk/b/f;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/teak/sdk/b/f;->b:Lio/teak/sdk/b/f;

    .line 50
    :cond_0
    sget-object v0, Lio/teak/sdk/b/f;->b:Lio/teak/sdk/b/f;

    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/b/f;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lio/teak/sdk/b/f;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lio/teak/sdk/b/f$2;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/b/f$2;-><init>(Lio/teak/sdk/b/f;Landroid/content/Intent;)V

    invoke-static {v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$a;)V

    .line 273
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/b/f;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lio/teak/sdk/b/f;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lio/teak/sdk/b/f;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lio/teak/sdk/b/f;->e:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lio/teak/sdk/b/f;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0}, Lio/teak/sdk/b/f;->a(Landroid/content/Context;)Lio/teak/sdk/b/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lio/teak/sdk/b/f;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 44
    .line 1276
    const-string v0, "teakNotifId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1280
    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/teak/sdk/b/f;->e:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    .line 1281
    const-string v0, "teakRewardId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1283
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1284
    const-string v0, "teakNotifId"

    const-string v4, "teakNotifId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string v0, "teakRewardId"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const-string v4, "incentivized"

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-string v0, "teakScheduleName"

    const-string v4, "teakScheduleName"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string v0, "teakCreativeName"

    const-string v4, "teakCreativeName"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    if-eqz v2, :cond_2

    .line 1291
    invoke-static {v2}, Lio/teak/sdk/TeakNotification$a;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1292
    if-eqz v0, :cond_0

    .line 1293
    iget-object v2, p0, Lio/teak/sdk/b/f;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lio/teak/sdk/b/f$3;

    invoke-direct {v4, p0, v0, v3, v1}, Lio/teak/sdk/b/f$3;-><init>(Lio/teak/sdk/b/f;Ljava/util/concurrent/Future;Ljava/util/HashMap;Landroid/os/Bundle;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1316
    :cond_0
    :goto_1
    return-void

    .line 1286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1317
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1319
    const-string v1, "eventData"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1320
    invoke-direct {p0, v0}, Lio/teak/sdk/b/f;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lio/teak/sdk/b/f;->e:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 264
    return-void
.end method
