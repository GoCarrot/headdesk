.class final Lio/teak/sdk/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/d;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/teak/sdk/d;


# direct methods
.method constructor <init>(Lio/teak/sdk/d;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lio/teak/sdk/d$2;->a:Lio/teak/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/n;)V
    .locals 3
    .param p1    # Lio/teak/sdk/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 186
    iget-object v0, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    check-cast p1, Lio/teak/sdk/c/l;

    iget-object v0, p1, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/d;

    .line 188
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/teak/sdk/d$2$1;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/d$2$1;-><init>(Lio/teak/sdk/d$2;Lio/teak/sdk/a/d;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_0
    return-void
.end method
