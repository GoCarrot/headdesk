.class final Lio/teak/sdk/push/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/push/a;->requestPushKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lio/teak/sdk/push/a;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .prologue
    .line 85
    iput-object p2, p0, Lio/teak/sdk/push/a$4;->a:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 88
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/push/a$4;->a:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 90
    if-nez v0, :cond_1

    .line 91
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "google.gcm.null_token"

    const-string v2, "Got null token during GCM registration."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v2, "google.gcm.registered"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "gcmId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v3}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    invoke-static {}, Lio/teak/sdk/Teak;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    new-instance v1, Lio/teak/sdk/c/k;

    const-string v2, "gcm_push_key"

    invoke-direct {v1, v2, v0}, Lio/teak/sdk/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0

    .line 100
    :catch_1
    move-exception v0

    .line 101
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
