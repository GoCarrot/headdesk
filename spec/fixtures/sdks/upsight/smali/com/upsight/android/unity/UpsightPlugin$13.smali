.class Lcom/upsight/android/unity/UpsightPlugin$13;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->recordGooglePlayPurchase(ILjava/lang/String;DDLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;

.field final synthetic val$currency:Ljava/lang/String;

.field final synthetic val$inAppDataSignature:Ljava/lang/String;

.field final synthetic val$inAppPurchaseData:Ljava/lang/String;

.field final synthetic val$price:D

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$properties:Ljava/lang/String;

.field final synthetic val$quantity:I

.field final synthetic val$reponseCode:I

.field final synthetic val$totalPrice:D


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/unity/UpsightPlugin;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iput-object p2, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$properties:Ljava/lang/String;

    iput p3, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$reponseCode:I

    iput-object p4, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$inAppPurchaseData:Ljava/lang/String;

    iput-object p5, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$inAppDataSignature:Ljava/lang/String;

    iput p6, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$quantity:I

    iput-object p7, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$currency:Ljava/lang/String;

    iput-wide p8, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$price:D

    iput-wide p10, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$totalPrice:D

    iput-object p12, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$product:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 434
    new-instance v0, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    .line 435
    .local v0, "builder":Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$properties:Ljava/lang/String;

    invoke-static {v1}, Lcom/upsight/android/unity/UpsightPlugin;->access$000(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 438
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v9, "responseData":Landroid/content/Intent;
    const-string v1, "RESPONSE_CODE"

    iget v2, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$reponseCode:I

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 440
    const-string v1, "INAPP_PURCHASE_DATA"

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$inAppPurchaseData:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    const-string v1, "INAPP_DATA_SIGNATURE"

    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$inAppDataSignature:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v1, v1, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget v2, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$quantity:I

    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$currency:Ljava/lang/String;

    iget-wide v4, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$price:D

    iget-wide v6, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$totalPrice:D

    iget-object v8, p0, Lcom/upsight/android/unity/UpsightPlugin$13;->val$product:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v10

    invoke-static/range {v1 .. v10}, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;->trackPurchase(Lcom/upsight/android/UpsightContext;ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v9    # "responseData":Landroid/content/Intent;
    :goto_0
    return-void

    .line 443
    :catch_0
    move-exception v11

    .line 444
    .local v11, "e":Lcom/upsight/android/UpsightException;
    const-string v1, "Upsight-Unity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recordGooglePlayPurchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/upsight/android/UpsightException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-virtual {v11}, Lcom/upsight/android/UpsightException;->printStackTrace()V

    goto :goto_0
.end method
