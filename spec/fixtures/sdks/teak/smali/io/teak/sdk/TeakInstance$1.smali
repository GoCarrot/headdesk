.class final Lio/teak/sdk/TeakInstance$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/TeakInstance;-><init>(Landroid/app/Activity;Lio/teak/sdk/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/d;

.field private synthetic b:Lio/teak/sdk/TeakInstance;


# direct methods
.method constructor <init>(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/d;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lio/teak/sdk/TeakInstance$1;->b:Lio/teak/sdk/TeakInstance;

    iput-object p2, p0, Lio/teak/sdk/TeakInstance$1;->a:Lio/teak/sdk/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/teak/sdk/n;)V
    .locals 5
    .param p1    # Lio/teak/sdk/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 71
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$1;->b:Lio/teak/sdk/TeakInstance;

    new-instance v1, Lio/teak/sdk/f/a;

    iget-object v2, p0, Lio/teak/sdk/TeakInstance$1;->b:Lio/teak/sdk/TeakInstance;

    invoke-static {v2}, Lio/teak/sdk/TeakInstance;->access$000(Lio/teak/sdk/TeakInstance;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sdk"

    iget-object v4, p0, Lio/teak/sdk/TeakInstance$1;->a:Lio/teak/sdk/d;

    invoke-direct {v1, v2, v3, p1, v4}, Lio/teak/sdk/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/teak/sdk/n;Lio/teak/sdk/d;)V

    iput-object v1, v0, Lio/teak/sdk/TeakInstance;->sdkRaven:Lio/teak/sdk/f/a;

    .line 72
    iget-object v0, p0, Lio/teak/sdk/TeakInstance$1;->b:Lio/teak/sdk/TeakInstance;

    new-instance v1, Lio/teak/sdk/f/a;

    iget-object v2, p0, Lio/teak/sdk/TeakInstance$1;->b:Lio/teak/sdk/TeakInstance;

    invoke-static {v2}, Lio/teak/sdk/TeakInstance;->access$000(Lio/teak/sdk/TeakInstance;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lio/teak/sdk/n;->b:Lio/teak/sdk/a/a;

    iget-object v3, v3, Lio/teak/sdk/a/a;->f:Ljava/lang/String;

    iget-object v4, p0, Lio/teak/sdk/TeakInstance$1;->a:Lio/teak/sdk/d;

    invoke-direct {v1, v2, v3, p1, v4}, Lio/teak/sdk/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/teak/sdk/n;Lio/teak/sdk/d;)V

    invoke-static {v0, v1}, Lio/teak/sdk/TeakInstance;->access$102(Lio/teak/sdk/TeakInstance;Lio/teak/sdk/f/a;)Lio/teak/sdk/f/a;

    .line 73
    return-void
.end method
