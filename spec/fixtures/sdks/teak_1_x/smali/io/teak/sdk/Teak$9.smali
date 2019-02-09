.class final Lio/teak/sdk/Teak$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/Teak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 541
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
    .line 544
    iget-object v0, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const-string v1, "SessionStateEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lio/teak/sdk/c/m;

    iget-object v0, p1, Lio/teak/sdk/c/m;->b:Lio/teak/sdk/b/d$b;

    sget-object v1, Lio/teak/sdk/b/d$b;->c:Lio/teak/sdk/b/d$b;

    if-ne v0, v1, :cond_0

    .line 547
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lio/teak/sdk/Teak$9$1;

    invoke-direct {v1, p0}, Lio/teak/sdk/Teak$9$1;-><init>(Lio/teak/sdk/Teak$9;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 561
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 563
    :cond_0
    return-void
.end method
