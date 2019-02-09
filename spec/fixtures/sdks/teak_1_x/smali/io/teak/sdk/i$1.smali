.class final Lio/teak/sdk/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/i;->a(Ljava/lang/String;Z)Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Landroid/view/LayoutInflater;

.field private synthetic b:I


# direct methods
.method constructor <init>(Lio/teak/sdk/i;Landroid/view/LayoutInflater;I)V
    .locals 0

    .prologue
    .line 336
    iput-object p2, p0, Lio/teak/sdk/i$1;->a:Landroid/view/LayoutInflater;

    iput p3, p0, Lio/teak/sdk/i$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    .line 1339
    iget-object v0, p0, Lio/teak/sdk/i$1;->a:Landroid/view/LayoutInflater;

    iget v1, p0, Lio/teak/sdk/i$1;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 336
    return-object v0
.end method
