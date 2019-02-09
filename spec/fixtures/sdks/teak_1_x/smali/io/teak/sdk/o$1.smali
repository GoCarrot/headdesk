.class final Lio/teak/sdk/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/o;-><init>(Landroid/app/Activity;Lio/teak/sdk/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/c;

.field private synthetic b:Lio/teak/sdk/o;


# direct methods
.method constructor <init>(Lio/teak/sdk/o;Lio/teak/sdk/c;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lio/teak/sdk/o$1;->b:Lio/teak/sdk/o;

    iput-object p2, p0, Lio/teak/sdk/o$1;->a:Lio/teak/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/m;)V
    .locals 5
    .param p1    # Lio/teak/sdk/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 74
    iget-object v0, p0, Lio/teak/sdk/o$1;->b:Lio/teak/sdk/o;

    new-instance v1, Lio/teak/sdk/j;

    iget-object v2, p0, Lio/teak/sdk/o$1;->b:Lio/teak/sdk/o;

    invoke-static {v2}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sdk"

    iget-object v4, p0, Lio/teak/sdk/o$1;->a:Lio/teak/sdk/c;

    invoke-direct {v1, v2, v3, p1, v4}, Lio/teak/sdk/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/teak/sdk/m;Lio/teak/sdk/c;)V

    iput-object v1, v0, Lio/teak/sdk/o;->b:Lio/teak/sdk/j;

    .line 75
    iget-object v0, p0, Lio/teak/sdk/o$1;->b:Lio/teak/sdk/o;

    new-instance v1, Lio/teak/sdk/j;

    iget-object v2, p0, Lio/teak/sdk/o$1;->b:Lio/teak/sdk/o;

    invoke-static {v2}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lio/teak/sdk/m;->b:Lio/teak/sdk/a/a;

    iget-object v3, v3, Lio/teak/sdk/a/a;->e:Ljava/lang/String;

    iget-object v4, p0, Lio/teak/sdk/o$1;->a:Lio/teak/sdk/c;

    invoke-direct {v1, v2, v3, p1, v4}, Lio/teak/sdk/j;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/teak/sdk/m;Lio/teak/sdk/c;)V

    invoke-static {v0, v1}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;Lio/teak/sdk/j;)Lio/teak/sdk/j;

    .line 76
    return-void
.end method
