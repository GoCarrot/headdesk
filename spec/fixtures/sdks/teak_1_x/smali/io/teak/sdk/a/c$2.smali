.class final Lio/teak/sdk/a/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/a/c;-><init>(Landroid/content/Context;Lio/teak/sdk/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/a/c;


# direct methods
.method constructor <init>(Lio/teak/sdk/a/c;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lio/teak/sdk/a/c$2;->a:Lio/teak/sdk/a/c;

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
    .line 109
    iget-object v0, p1, Lio/teak/sdk/n;->a:Ljava/lang/String;

    const-string v1, "RemoteConfigurationEvent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    check-cast p1, Lio/teak/sdk/c/l;

    iget-object v0, p1, Lio/teak/sdk/c/l;->b:Lio/teak/sdk/a/d;

    .line 113
    iget-object v1, v0, Lio/teak/sdk/a/d;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lio/teak/sdk/a/c$2;->a:Lio/teak/sdk/a/c;

    iget-object v0, v0, Lio/teak/sdk/a/d;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lio/teak/sdk/a/c;->a(Lio/teak/sdk/a/c;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    :cond_0
    iget-object v0, p0, Lio/teak/sdk/a/c$2;->a:Lio/teak/sdk/a/c;

    invoke-virtual {v0}, Lio/teak/sdk/a/c;->a()V

    .line 120
    :cond_1
    return-void
.end method
