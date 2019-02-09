.class final Lio/teak/sdk/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/o;)V
    .locals 2
    .param p1    # Lio/teak/sdk/o;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p1, Lio/teak/sdk/o;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/teak/sdk/n;->b()Lio/teak/sdk/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lio/teak/sdk/n;->b()Lio/teak/sdk/n;

    move-result-object v0

    check-cast p1, Lio/teak/sdk/c/l;

    iget-object v1, p1, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/e;

    iput-object v1, v0, Lio/teak/sdk/n;->d:Lio/teak/sdk/a/e;

    .line 65
    :cond_0
    return-void
.end method
