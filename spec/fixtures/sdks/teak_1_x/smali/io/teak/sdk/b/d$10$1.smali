.class final Lio/teak/sdk/b/d$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/d$10;->a(Lio/teak/sdk/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/b/d$10;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/d$10;)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lio/teak/sdk/b/d$10$1;->a:Lio/teak/sdk/b/d$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lio/teak/sdk/b/d$10$1;->a:Lio/teak/sdk/b/d$10;

    iget-object v0, v0, Lio/teak/sdk/b/d$10;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 516
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/d$10$1;->a:Lio/teak/sdk/b/d$10;

    iget-object v0, v0, Lio/teak/sdk/b/d$10;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->e(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/d$b;

    move-result-object v0

    sget-object v1, Lio/teak/sdk/b/d$b;->g:Lio/teak/sdk/b/d$b;

    if-ne v0, v1, :cond_0

    .line 517
    iget-object v0, p0, Lio/teak/sdk/b/d$10$1;->a:Lio/teak/sdk/b/d$10;

    iget-object v0, v0, Lio/teak/sdk/b/d$10;->a:Lio/teak/sdk/b/d;

    sget-object v1, Lio/teak/sdk/b/d$b;->d:Lio/teak/sdk/b/d$b;

    invoke-static {v0, v1}, Lio/teak/sdk/b/d;->b(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;)Lio/teak/sdk/b/d$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :goto_0
    iget-object v0, p0, Lio/teak/sdk/b/d$10$1;->a:Lio/teak/sdk/b/d$10;

    iget-object v0, v0, Lio/teak/sdk/b/d$10;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 523
    return-void

    .line 519
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/teak/sdk/b/d$10$1;->a:Lio/teak/sdk/b/d$10;

    iget-object v0, v0, Lio/teak/sdk/b/d$10;->a:Lio/teak/sdk/b/d;

    sget-object v1, Lio/teak/sdk/b/d$b;->d:Lio/teak/sdk/b/d$b;

    invoke-static {v0, v1}, Lio/teak/sdk/b/d;->a(Lio/teak/sdk/b/d;Lio/teak/sdk/b/d$b;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 522
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lio/teak/sdk/b/d$10$1;->a:Lio/teak/sdk/b/d$10;

    iget-object v1, v1, Lio/teak/sdk/b/d$10;->a:Lio/teak/sdk/b/d;

    invoke-static {v1}, Lio/teak/sdk/b/d;->d(Lio/teak/sdk/b/d;)Lio/teak/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
.end method
