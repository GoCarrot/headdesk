.class final Lio/teak/sdk/b/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private a:Lio/teak/sdk/b/d$a;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/d$a;)V
    .locals 0

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object p1, p0, Lio/teak/sdk/b/d$c;->a:Lio/teak/sdk/b/d$a;

    .line 614
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 618
    invoke-static {}, Lio/teak/sdk/b/d;->d()Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->lock()V

    .line 620
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/b/d$c;->a:Lio/teak/sdk/b/d$a;

    invoke-static {}, Lio/teak/sdk/b/d;->e()Lio/teak/sdk/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/teak/sdk/b/d$a;->a(Lio/teak/sdk/b/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    invoke-static {}, Lio/teak/sdk/b/d;->d()Lio/teak/sdk/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/b/c;->unlock()V

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v0

    invoke-static {}, Lio/teak/sdk/b/d;->d()Lio/teak/sdk/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lio/teak/sdk/b/c;->unlock()V

    throw v0
.end method
