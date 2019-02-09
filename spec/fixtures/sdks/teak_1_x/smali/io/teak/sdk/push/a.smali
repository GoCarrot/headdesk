.class public final Lio/teak/sdk/push/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/push/b;


# instance fields
.field private final a:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/google/android/gms/gcm/GoogleCloudMessaging;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
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
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "com.google.android.gms.gcm.GoogleCloudMessaging"

    invoke-static {v0}, Lio/teak/sdk/d;->a(Ljava/lang/String;)V

    .line 41
    const-string v0, "com.google.android.gms.iid.InstanceIDListenerService"

    invoke-static {v0}, Lio/teak/sdk/d;->a(Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/l;

    const/16 v2, 0x64

    const-wide/16 v4, 0x7d0

    new-instance v3, Lio/teak/sdk/push/a$1;

    invoke-direct {v3, p0, p1}, Lio/teak/sdk/push/a$1;-><init>(Lio/teak/sdk/push/a;Landroid/content/Context;)V

    invoke-direct {v1, v2, v4, v5, v3}, Lio/teak/sdk/l;-><init>(IJLjava/util/concurrent/Callable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lio/teak/sdk/push/a;->a:Ljava/util/concurrent/FutureTask;

    .line 50
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lio/teak/sdk/push/a;->a:Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    new-instance v0, Lio/teak/sdk/push/a$2;

    invoke-direct {v0, p0}, Lio/teak/sdk/push/a$2;-><init>(Lio/teak/sdk/push/a;)V

    invoke-static {v0}, Lio/teak/sdk/InstanceIDListenerService;->addEventListener(Lio/teak/sdk/InstanceIDListenerService$a;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/GoogleCloudMessaging;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    .line 1067
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    return-object v0
.end method

.method static synthetic a(Lio/teak/sdk/push/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/teak/sdk/push/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lio/teak/sdk/push/a;)Ljava/util/concurrent/FutureTask;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/teak/sdk/push/a;->a:Ljava/util/concurrent/FutureTask;

    return-object v0
.end method


# virtual methods
.method public final requestPushKey(Ljava/lang/String;)V
    .locals 6
    .param p1, "gcmSenderId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    iput-object p1, p0, Lio/teak/sdk/push/a;->b:Ljava/lang/String;

    .line 75
    :try_start_0
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lio/teak/sdk/l;

    const/16 v2, 0x64

    const-wide/16 v4, 0x1b58

    new-instance v3, Lio/teak/sdk/push/a$3;

    invoke-direct {v3, p0}, Lio/teak/sdk/push/a$3;-><init>(Lio/teak/sdk/push/a;)V

    invoke-direct {v1, v2, v4, v5, v3}, Lio/teak/sdk/l;-><init>(IJLjava/util/concurrent/Callable;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 83
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 85
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lio/teak/sdk/push/a$4;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/push/a$4;-><init>(Lio/teak/sdk/push/a;Ljava/util/concurrent/FutureTask;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 105
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
