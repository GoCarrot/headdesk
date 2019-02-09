.class final Lio/teak/sdk/o$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/o;-><init>(Landroid/app/Activity;Lio/teak/sdk/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/o;


# direct methods
.method constructor <init>(Lio/teak/sdk/o;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lio/teak/sdk/o$2;->a:Lio/teak/sdk/o;

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
    .line 82
    iget-object v0, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    check-cast p1, Lio/teak/sdk/c/l;

    iget-object v0, p1, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/d;

    .line 85
    iget-object v1, v0, Lio/teak/sdk/a/d;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/teak/sdk/o$2;->a:Lio/teak/sdk/o;

    iget-object v1, v1, Lio/teak/sdk/o;->b:Lio/teak/sdk/j;

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lio/teak/sdk/o$2;->a:Lio/teak/sdk/o;

    iget-object v1, v1, Lio/teak/sdk/o;->b:Lio/teak/sdk/j;

    iget-object v2, v0, Lio/teak/sdk/a/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lio/teak/sdk/j;->a(Ljava/lang/String;)V

    .line 89
    :cond_0
    iget-object v1, v0, Lio/teak/sdk/a/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/teak/sdk/o$2;->a:Lio/teak/sdk/o;

    invoke-static {v1}, Lio/teak/sdk/o;->b(Lio/teak/sdk/o;)Lio/teak/sdk/j;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lio/teak/sdk/o$2;->a:Lio/teak/sdk/o;

    invoke-static {v1}, Lio/teak/sdk/o;->b(Lio/teak/sdk/o;)Lio/teak/sdk/j;

    move-result-object v1

    iget-object v0, v0, Lio/teak/sdk/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/teak/sdk/j;->a(Ljava/lang/String;)V

    .line 91
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lio/teak/sdk/o$2;->a:Lio/teak/sdk/o;

    invoke-static {v0}, Lio/teak/sdk/o;->b(Lio/teak/sdk/o;)Lio/teak/sdk/j;

    move-result-object v0

    invoke-virtual {v0}, Lio/teak/sdk/j;->a()V

    .line 96
    :cond_1
    return-void
.end method
