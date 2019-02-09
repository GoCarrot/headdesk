.class final Lio/teak/sdk/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/e;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/teak/sdk/e;


# direct methods
.method constructor <init>(Lio/teak/sdk/e;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lio/teak/sdk/e$2;->a:Lio/teak/sdk/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 3
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    iget-object v0, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    check-cast p1, Lio/teak/sdk/c/l;

    iget-object v0, p1, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/e;

    .line 208
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lio/teak/sdk/e$2$1;

    invoke-direct {v2, p0, v0}, Lio/teak/sdk/e$2$1;-><init>(Lio/teak/sdk/e$2;Lio/teak/sdk/a/e;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    :cond_0
    return-void
.end method
