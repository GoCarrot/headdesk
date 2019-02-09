.class final Lio/teak/sdk/b/d$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


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
    .line 507
    iput-object p1, p0, Lio/teak/sdk/b/d$10;->a:Lio/teak/sdk/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/n;)V
    .locals 2
    .param p1    # Lio/teak/sdk/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 510
    iget-object v0, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lio/teak/sdk/b/d$10;->a:Lio/teak/sdk/b/d;

    invoke-static {v0}, Lio/teak/sdk/b/d;->j(Lio/teak/sdk/b/d;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lio/teak/sdk/b/d$10$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/b/d$10$1;-><init>(Lio/teak/sdk/b/d$10;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 527
    :cond_0
    return-void
.end method
