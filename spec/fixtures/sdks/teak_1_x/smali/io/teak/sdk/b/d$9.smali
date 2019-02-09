.class final Lio/teak/sdk/b/d$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/teak/sdk/b/d;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/d;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lio/teak/sdk/b/d$9;->a:Lio/teak/sdk/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lio/teak/sdk/b/d$9;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 489
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/d$9;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->e(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/d$b;

    move-result-object v0

    sget-object v1, Lio/teak/sdk/b/d$b;->f:Lio/teak/sdk/b/d$b;

    if-ne v0, v1, :cond_1

    .line 490
    iget-object v0, p0, Lio/teak/sdk/b/d$9;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->b(Lio/teak/sdk/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/b/d$9;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 501
    return-void

    .line 491
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/b/d$9;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->e(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/d$b;

    move-result-object v0

    sget-object v1, Lio/teak/sdk/b/d$b;->e:Lio/teak/sdk/b/d$b;

    if-ne v0, v1, :cond_0

    .line 492
    new-instance v0, Lio/teak/sdk/b/d$9$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/b/d$9$1;-><init>(Lio/teak/sdk/b/d$9;)V

    invoke-static {v0}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d$a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/d$9;->a:Lio/teak/sdk/b/d;

    invoke-static {v1}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
.end method
