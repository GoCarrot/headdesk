.class final Lio/teak/sdk/g/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lio/teak/sdk/g/a;


# direct methods
.method private constructor <init>(Lio/teak/sdk/g/a;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lio/teak/sdk/g/a$a;->a:Lio/teak/sdk/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/teak/sdk/g/a;B)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lio/teak/sdk/g/a$a;-><init>(Lio/teak/sdk/g/a;)V

    return-void
.end method


# virtual methods
.method public final onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 9
    .param p1, "productDataResponse"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .prologue
    .line 147
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lio/teak/sdk/g/a$a;->a:Lio/teak/sdk/g/a;

    invoke-static {v1}, Lio/teak/sdk/g/a;->a(Lio/teak/sdk/g/a;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 150
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v1

    .line 153
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 154
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/iap/model/Product;

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v2

    .line 155
    sget-object v4, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v5, "amazon.iap.sku"

    const-string v6, "SKU Details retrieved."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    invoke-static {v7}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v4, v5, v6, v1}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 156
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "amazon.iap.sku"

    const-string v2, "SKU Details query failed."

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_1
    return-void
.end method

.method public final onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 2
    .param p1, "purchaseResponse"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 167
    :try_start_0
    iget-object v0, p0, Lio/teak/sdk/g/a$a;->a:Lio/teak/sdk/g/a;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/teak/sdk/g/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 172
    :cond_0
    new-instance v0, Lio/teak/sdk/c/i;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lio/teak/sdk/c/i;-><init>(I)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    goto :goto_0
.end method

.method public final onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public final onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 8
    .param p1, "userDataResponse"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    if-ne v0, v1, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object v0

    .line 141
    sget-object v2, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v3, "amazon.iap.user"

    const-string v4, "Amazon Store User Details retrieved."

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "storeUserId"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v1, 0x2

    const-string v6, "storeMarketplace"

    aput-object v6, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    invoke-static {v5}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 143
    :cond_0
    return-void
.end method
