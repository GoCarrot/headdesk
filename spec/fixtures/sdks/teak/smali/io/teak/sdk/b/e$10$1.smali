.class final Lio/teak/sdk/b/e$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/e$10;->a(Lio/teak/sdk/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b/e$10;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/e$10;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lio/teak/sdk/b/e$10$1;->a:Lio/teak/sdk/b/e$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 526
    iget-object v0, p0, Lio/teak/sdk/b/e$10$1;->a:Lio/teak/sdk/b/e$10;

    iget-object v0, v0, Lio/teak/sdk/b/e$10;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 528
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/e$10$1;->a:Lio/teak/sdk/b/e$10;

    iget-object v0, v0, Lio/teak/sdk/b/e$10;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->e(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/e$b;

    move-result-object v0

    sget-object v1, Lio/teak/sdk/b/e$b;->g:Lio/teak/sdk/b/e$b;

    if-ne v0, v1, :cond_0

    .line 529
    iget-object v0, p0, Lio/teak/sdk/b/e$10$1;->a:Lio/teak/sdk/b/e$10;

    iget-object v0, v0, Lio/teak/sdk/b/e$10;->a:Lio/teak/sdk/b/e;

    sget-object v1, Lio/teak/sdk/b/e$b;->d:Lio/teak/sdk/b/e$b;

    invoke-static {v0, v1}, Lio/teak/sdk/b/e;->b(Lio/teak/sdk/b/e;Lio/teak/sdk/b/e$b;)Lio/teak/sdk/b/e$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/b/e$10$1;->a:Lio/teak/sdk/b/e$10;

    iget-object v0, v0, Lio/teak/sdk/b/e$10;->a:Lio/teak/sdk/b/e;

    invoke-static {v0}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 535
    return-void

    .line 531
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/b/e$10$1;->a:Lio/teak/sdk/b/e$10;

    iget-object v0, v0, Lio/teak/sdk/b/e$10;->a:Lio/teak/sdk/b/e;

    sget-object v1, Lio/teak/sdk/b/e$b;->d:Lio/teak/sdk/b/e$b;

    invoke-static {v0, v1}, Lio/teak/sdk/b/e;->a(Lio/teak/sdk/b/e;Lio/teak/sdk/b/e$b;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 534
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/e$10$1;->a:Lio/teak/sdk/b/e$10;

    iget-object v1, v1, Lio/teak/sdk/b/e$10;->a:Lio/teak/sdk/b/e;

    invoke-static {v1}, Lio/teak/sdk/b/e;->d(Lio/teak/sdk/b/e;)Lio/teak/sdk/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 535
    throw v0
.end method
