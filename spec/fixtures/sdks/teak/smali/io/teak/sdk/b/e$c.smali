.class final Lio/teak/sdk/b/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lio/teak/sdk/b/e$a;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/e$a;)V
    .locals 0

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    iput-object p1, p0, Lio/teak/sdk/b/e$c;->a:Lio/teak/sdk/b/e$a;

    .line 636
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 640
    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->lock()V

    .line 642
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/e$c;->a:Lio/teak/sdk/b/e$a;

    invoke-static {}, Lio/teak/sdk/b/e;->e()Lio/teak/sdk/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/teak/sdk/b/e$a;->a(Lio/teak/sdk/b/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/d;->unlock()V

    .line 645
    return-void

    .line 644
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/teak/sdk/b/e;->d()Lio/teak/sdk/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/d;->unlock()V

    .line 645
    throw v0
.end method
