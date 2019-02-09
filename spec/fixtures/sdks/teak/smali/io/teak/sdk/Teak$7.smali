.class final Lio/teak/sdk/Teak$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak;->pluginPurchaseFailed(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/Map;


# direct methods
.method constructor <init>(ILjava/util/Map;)V
    .locals 0

    .prologue
    .line 528
    iput p1, p0, Lio/teak/sdk/Teak$7;->a:I

    iput-object p2, p0, Lio/teak/sdk/Teak$7;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 531
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/TeakInstance;

    iget v1, p0, Lio/teak/sdk/Teak$7;->a:I

    iget-object v2, p0, Lio/teak/sdk/Teak$7;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/TeakInstance;->purchaseFailed(ILjava/util/Map;)V

    .line 532
    return-void
.end method
