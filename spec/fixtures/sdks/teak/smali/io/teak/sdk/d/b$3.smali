.class final Lio/teak/sdk/d/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/d/b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lio/teak/sdk/d/b;


# direct methods
.method constructor <init>(Lio/teak/sdk/d/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lio/teak/sdk/d/b$3;->b:Lio/teak/sdk/d/b;

    iput-object p2, p0, Lio/teak/sdk/d/b$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/b$b;)V
    .locals 2

    .prologue
    .line 189
    sget-object v0, Lio/teak/sdk/b/b$b;->c:Lio/teak/sdk/b/b$b;

    if-ne p1, v0, :cond_0

    .line 190
    iget-object v0, p0, Lio/teak/sdk/d/b$3;->b:Lio/teak/sdk/d/b;

    iget-object v1, p0, Lio/teak/sdk/d/b$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lio/teak/sdk/d/b;->a(Lio/teak/sdk/d/b;Landroid/content/Context;)V

    .line 192
    :cond_0
    return-void
.end method
