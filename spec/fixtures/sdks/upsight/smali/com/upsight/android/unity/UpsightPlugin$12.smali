.class Lcom/upsight/android/unity/UpsightPlugin$12;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->recordMonetizationEvent(DLjava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$price:D

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$properties:Ljava/lang/String;

.field final synthetic val$quantity:I

.field final synthetic val$resolution:Ljava/lang/String;

.field final synthetic val$totalPrice:D


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 406
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-wide p2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$totalPrice:D

    iput-object p4, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$currency:Ljava/lang/String;

    iput-object p5, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$properties:Ljava/lang/String;

    iput-object p6, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$product:Ljava/lang/String;

    iput-wide p7, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$price:D

    iput-object p9, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$resolution:Ljava/lang/String;

    iput p10, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$quantity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 409
    iget-wide v2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$totalPrice:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$currency:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;->createBuilder(Ljava/lang/Double;Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    move-result-object v0

    .line 410
    .local v0, "builder":Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$properties:Ljava/lang/String;

    invoke-static {v1}, Lcom/upsight/android/unity/UpsightPlugin;->access$000(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    .line 412
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$product:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setProduct(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 415
    :cond_0
    iget-wide v2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$price:D

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 416
    iget-wide v2, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$price:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setPrice(Ljava/lang/Double;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$resolution:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 419
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$resolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setResolution(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 421
    :cond_2
    iget v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$quantity:I

    if-lez v1, :cond_3

    .line 422
    iget v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->val$quantity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setQuantity(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 424
    :cond_3
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$12;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v1, v1, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 425
    return-void
.end method
