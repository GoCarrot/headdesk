.class final Lio/teak/sdk/Teak$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak;->checkActivityResultForPurchase(ILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Landroid/content/Intent;


# direct methods
.method constructor <init>(ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 541
    iput p1, p0, Lio/teak/sdk/Teak$8;->a:I

    iput-object p2, p0, Lio/teak/sdk/Teak$8;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 544
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget v1, p0, Lio/teak/sdk/Teak$8;->a:I

    iget-object v2, p0, Lio/teak/sdk/Teak$8;->b:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/TeakInstance;->checkActivityResultForPurchase(ILandroid/content/Intent;)V

    .line 545
    return-void
.end method
