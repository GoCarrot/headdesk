.class final Lio/teak/sdk/b/f$2;
.super Lio/teak/sdk/b/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/b/f;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/Intent;

.field private synthetic b:Lio/teak/sdk/b/f;


# direct methods
.method constructor <init>(Lio/teak/sdk/b/f;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lio/teak/sdk/b/f$2;->b:Lio/teak/sdk/b/f;

    iput-object p2, p0, Lio/teak/sdk/b/f$2;->a:Landroid/content/Intent;

    invoke-direct {p0}, Lio/teak/sdk/b/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/b/e;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lio/teak/sdk/b/f$2;->b:Lio/teak/sdk/b/f;

    invoke-static {v0}, Lio/teak/sdk/b/f;->b(Lio/teak/sdk/b/f;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lio/teak/sdk/b/f$2;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 271
    return-void
.end method
