.class public Lio/teak/sdk/wrapper/TeakInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/Unobfuscable;


# instance fields
.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final deepLinksReadyTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final sdkWrapper:Lio/teak/sdk/wrapper/a;


# direct methods
.method public constructor <init>(Lio/teak/sdk/wrapper/a;)V
    .locals 3
    .param p1, "sdkWrapper"    # Lio/teak/sdk/wrapper/a;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lio/teak/sdk/wrapper/TeakInterface$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/wrapper/TeakInterface$2;-><init>(Lio/teak/sdk/wrapper/TeakInterface;)V

    iput-object v0, p0, Lio/teak/sdk/wrapper/TeakInterface;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 22
    iput-object p1, p0, Lio/teak/sdk/wrapper/TeakInterface;->sdkWrapper:Lio/teak/sdk/wrapper/a;

    .line 23
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/wrapper/TeakInterface$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/wrapper/TeakInterface$1;-><init>(Lio/teak/sdk/wrapper/TeakInterface;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object v0, p0, Lio/teak/sdk/wrapper/TeakInterface;->deepLinksReadyTask:Ljava/util/concurrent/FutureTask;

    .line 29
    iget-object v0, p0, Lio/teak/sdk/wrapper/TeakInterface;->deepLinksReadyTask:Ljava/util/concurrent/FutureTask;

    sput-object v0, Lio/teak/sdk/Teak;->waitForDeepLink:Ljava/util/concurrent/Future;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 32
    const-string v1, "io.teak.sdk.Teak.intent.REWARD_CLAIM_ATTEMPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    const-string v1, "io.teak.sdk.Teak.intent.LAUNCHED_FROM_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget-object v1, v1, Lio/teak/sdk/TeakInstance;->objectFactory:Lio/teak/sdk/d;

    invoke-interface {v1}, Lio/teak/sdk/d;->e()Lio/teak/sdk/b/c;

    move-result-object v1

    iget-object v2, p0, Lio/teak/sdk/wrapper/TeakInterface;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-interface {v1, v2, v0}, Lio/teak/sdk/b/c;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/teak/sdk/wrapper/TeakInterface;)Lio/teak/sdk/wrapper/a;
    .locals 1
    .param p0, "x0"    # Lio/teak/sdk/wrapper/TeakInterface;

    .prologue
    .line 17
    iget-object v0, p0, Lio/teak/sdk/wrapper/TeakInterface;->sdkWrapper:Lio/teak/sdk/wrapper/a;

    return-object v0
.end method


# virtual methods
.method public readyForDeepLinks()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lio/teak/sdk/wrapper/TeakInterface;->deepLinksReadyTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 42
    return-void
.end method
