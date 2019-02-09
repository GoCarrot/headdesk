.class public final Lio/teak/sdk/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/b/b;


# static fields
.field public static final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private static b:Lio/teak/sdk/b/e;


# instance fields
.field private final c:Lio/teak/sdk/n$a;

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private final e:Landroid/support/v4/content/LocalBroadcastManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/e;

    .line 341
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lio/teak/sdk/b/e;->a:Ljava/util/concurrent/ScheduledExecutorService;

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
            Lio/teak/sdk/d$b;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lio/teak/sdk/b/e$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/e$1;-><init>(Lio/teak/sdk/b/e;)V

    iput-object v0, p0, Lio/teak/sdk/b/e;->c:Lio/teak/sdk/n$a;

    .line 338
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/e;->d:Ljava/util/concurrent/ExecutorService;

    .line 75
    const-string v0, "android.support.v4.content.LocalBroadcastManager"

    invoke-static {v0}, Lio/teak/sdk/d;->a(Ljava/lang/String;)V

    .line 77
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lio/teak/sdk/b/e;->e:Landroid/support/v4/content/LocalBroadcastManager;

    .line 79
    iget-object v0, p0, Lio/teak/sdk/b/e;->c:Lio/teak/sdk/n$a;

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 1086
    invoke-static {}, Lio/teak/sdk/a/d;->a()V

    .line 1087
    invoke-static {}, Lio/teak/sdk/b/d;->a()V

    .line 1088
    invoke-static {}, Lio/teak/sdk/k;->b()V

    .line 82
    return-void
.end method

.method public static a(Landroid/content/Context;)Lio/teak/sdk/b/e;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/teak/sdk/d$b;
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/e;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lio/teak/sdk/b/e;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/e;

    .line 63
    :cond_0
    sget-object v0, Lio/teak/sdk/b/e;->b:Lio/teak/sdk/b/e;

    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/b/e;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/teak/sdk/b/e;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lio/teak/sdk/b/e$2;

    invoke-direct {v0, p0, p1}, Lio/teak/sdk/b/e$2;-><init>(Lio/teak/sdk/b/e;Landroid/content/Intent;)V

    invoke-static {v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$a;)V

    .line 283
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/b/e;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lio/teak/sdk/b/e;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lio/teak/sdk/b/e;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lio/teak/sdk/b/e;->e:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lio/teak/sdk/b/e;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 68
    :try_start_0
    invoke-static {p0}, Lio/teak/sdk/b/e;->a(Landroid/content/Context;)Lio/teak/sdk/b/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lio/teak/sdk/b/e;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 57
    .line 1286
    const-string v0, "teakNotifId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1290
    if-eqz v1, :cond_0

    iget-object v0, p0, Lio/teak/sdk/b/e;->e:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_0

    .line 1291
    const-string v0, "teakRewardId"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1293
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1294
    const-string v0, "teakNotifId"

    const-string v4, "teakNotifId"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1295
    const-string v0, "teakRewardId"

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    const-string v4, "incentivized"

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const-string v0, "teakScheduleName"

    const-string v4, "teakScheduleName"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    const-string v0, "teakCreativeName"

    const-string v4, "teakCreativeName"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    if-eqz v2, :cond_2

    .line 1301
    invoke-static {v2}, Lio/teak/sdk/TeakNotification$a;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1302
    if-eqz v0, :cond_0

    .line 1303
    iget-object v2, p0, Lio/teak/sdk/b/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lio/teak/sdk/b/e$3;

    invoke-direct {v4, p0, v0, v3, v1}, Lio/teak/sdk/b/e$3;-><init>(Lio/teak/sdk/b/e;Ljava/util/concurrent/Future;Ljava/util/HashMap;Landroid/os/Bundle;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1326
    :cond_0
    :goto_1
    return-void

    .line 1296
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1327
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1329
    const-string v1, "eventData"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1330
    invoke-direct {p0, v0}, Lio/teak/sdk/b/e;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lio/teak/sdk/b/e;->e:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 274
    return-void
.end method
