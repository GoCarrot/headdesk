.class public Lio/teak/sdk/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/h/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/h/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/device/iap/model/RequestId;",
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/teak/sdk/h/a;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/teak/sdk/h/a;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Lio/teak/sdk/e/c;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 60
    iget-object v0, p0, Lio/teak/sdk/h/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0}, Lio/teak/sdk/e/c;-><init>()V

    .line 63
    const-string v3, "price_string"

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 64
    iget-object v2, p0, Lio/teak/sdk/h/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/h/a;->a:Ljava/util/HashMap;

    .line 36
    new-instance v0, Lio/teak/sdk/h/a$a;

    invoke-direct {v0, p0, v5}, Lio/teak/sdk/h/a$a;-><init>(Lio/teak/sdk/h/a;B)V

    invoke-static {p1, v0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 38
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "amazon.iap"

    const-string v2, "Amazon In-App Purchasing 2.0 registered."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "sandboxMode"

    aput-object v4, v3, v5

    const/4 v4, 0x1

    sget-boolean v5, Lcom/amazon/device/iap/PurchasingService;->IS_SANDBOX_MODE:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lio/teak/sdk/a;->a([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    new-instance v0, Lio/teak/sdk/h/a$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/h/a$1;-><init>(Lio/teak/sdk/h/a;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o$a;)V

    .line 48
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 77
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    const-string v1, "amazon.iap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TODO: launchPurchaseFlowForSKU: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1092
    :try_start_1
    const-string v1, "receipt"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v1

    .line 1093
    const-string v2, "userData"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v0

    .line 1095
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1096
    :cond_0
    const-string v2, "purchase_token"

    const-string v3, "receiptId"

    invoke-virtual {v1, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    const-string v2, "purchase_time_string"

    const-string v3, "purchaseDate"

    invoke-virtual {v1, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string v2, "product_id"

    const-string v3, "sku"

    invoke-virtual {v1, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const-string v1, "store_marketplace"

    const-string v2, "marketplace"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v0, "product_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/teak/sdk/h/a;->b(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v0

    .line 1102
    if-eqz v0, :cond_1

    .line 1103
    const-string v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1104
    const-string v1, "price_currency_code"

    const-string v2, "price_currency_code"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    const-string v1, "price_amount_micros"

    const-string v2, "price_amount_micros"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :cond_1
    :goto_0
    new-instance v0, Lio/teak/sdk/c/h;

    invoke-direct {v0, p2}, Lio/teak/sdk/c/h;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lio/teak/sdk/o;->a(Lio/teak/sdk/o;)Z

    .line 88
    :goto_1
    return-void

    .line 1106
    :cond_2
    const-string v1, "price_string"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1107
    const-string v1, "price_string"

    const-string v2, "price_string"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1112
    :catch_0
    move-exception v0

    .line 1113
    :try_start_2
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 85
    :catch_1
    move-exception v0

    .line 86
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/f;

    invoke-virtual {v1, v0}, Lio/teak/sdk/f;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
