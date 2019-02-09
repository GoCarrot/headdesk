.class final Lio/teak/sdk/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/k;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
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
    .line 150
    iget-object v0, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    check-cast p1, Lio/teak/sdk/c/l;

    iget-object v0, p1, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/d;

    invoke-static {v0}, Lio/teak/sdk/k;->a(Lio/teak/sdk/a/d;)Lio/teak/sdk/a/d;

    .line 153
    :cond_0
    return-void
.end method
