.class final Lio/teak/sdk/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 40
    :goto_0
    :try_start_0
    invoke-static {}, Lio/teak/sdk/n;->a()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/teak/sdk/n;

    iget-object v1, v0, Lio/teak/sdk/n;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lio/teak/sdk/n;->b()Lio/teak/sdk/n$b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/teak/sdk/n$b;->a(Lio/teak/sdk/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 46
    :cond_0
    return-void
.end method
