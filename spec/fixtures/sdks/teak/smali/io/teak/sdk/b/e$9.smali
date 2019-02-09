.class final Lio/teak/sdk/b/e$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/teak/sdk/b/e;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/e;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lio/teak/sdk/b/e$9;->a:Lio/teak/sdk/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 497
    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 498
    iget-object v0, p0, Lio/teak/sdk/b/e$9;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 500
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/e$9;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->e(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/e$b;

    move-result-object v0

    sget-object v1, Lio/teak/sdk/b/e$b;->f:Lio/teak/sdk/b/e$b;

    if-ne v0, v1, :cond_1

    .line 501
    iget-object v0, p0, Lio/teak/sdk/b/e$9;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->b(Lio/teak/sdk/b/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/b/e$9;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 512
    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 513
    return-void

    .line 502
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/b/e$9;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->e(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/e$b;

    move-result-object v0

    sget-object v1, Lio/teak/sdk/b/e$b;->e:Lio/teak/sdk/b/e$b;

    if-ne v0, v1, :cond_0

    .line 503
    new-instance v0, Lio/teak/sdk/b/e$9$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/e$9$1;-><init>(Lio/teak/sdk/b/e$9;)V

    invoke-static {v0}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/e$9;->a:Lio/teak/sdk/b/e;

    invoke-static {v1}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 512
    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 513
    throw v0
.end method
