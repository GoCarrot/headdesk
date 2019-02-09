.class public Lio/teak/sdk/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/teak/sdk/g/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/teak/sdk/g/a$a;
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
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method static synthetic a(Lio/teak/sdk/g/a;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lio/teak/sdk/g/a;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lio/teak/sdk/e/c;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    .line 72
    new-instance v2, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 74
    iget-object v0, p0, Lio/teak/sdk/g/a;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0}, Lio/teak/sdk/e/c;-><init>()V

    .line 77
    const-string v3, "price_string"

    invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;Ljava/lang/Object;)Lio/teak/sdk/e/c;

    .line 78
    iget-object v2, p0, Lio/teak/sdk/g/a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public final a(ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/teak/sdk/g/a;->a:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lio/teak/sdk/g/a$a;

    invoke-direct {v0, p0, v5}, Lio/teak/sdk/g/a$a;-><init>(Lio/teak/sdk/g/a;B)V

    invoke-static {p1, v0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 52
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

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

    invoke-virtual {v0, v1, v2, v3}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    new-instance v0, Lio/teak/sdk/g/a$1;

    invoke-direct {v0, p0}, Lio/teak/sdk/g/a$1;-><init>(Lio/teak/sdk/g/a;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n$a;)V

    .line 62
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 91
    sget-object v0, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    const-string v1, "amazon.iap"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TODO: launchPurchaseFlowForSKU: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/teak/sdk/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Lio/teak/sdk/e/c;

    invoke-direct {v0, p1}, Lio/teak/sdk/e/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1106
    :try_start_1
    const-string v1, "receipt"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v1

    .line 1107
    const-string v2, "userData"

    invoke-virtual {v0, v2}, Lio/teak/sdk/e/c;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v0

    .line 1109
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1110
    const-string v3, "purchase_token"

    const-string v4, "receiptId"

    invoke-virtual {v1, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string v3, "purchase_time_string"

    const-string v4, "purchaseDate"

    invoke-virtual {v1, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string v3, "product_id"

    const-string v4, "sku"

    invoke-virtual {v1, v4}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    const-string v1, "store_user_id"

    const-string v3, "userId"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    const-string v1, "store_marketplace"

    const-string v3, "marketplace"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    const-string v0, "product_id"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/teak/sdk/g/a;->c(Ljava/lang/String;)Lio/teak/sdk/e/c;

    move-result-object v0

    .line 1117
    if-eqz v0, :cond_0

    .line 1118
    const-string v1, "price_amount_micros"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    const-string v1, "price_currency_code"

    const-string v3, "price_currency_code"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string v1, "price_amount_micros"

    const-string v3, "price_amount_micros"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    :cond_0
    :goto_0
    new-instance v0, Lio/teak/sdk/c/h;

    invoke-direct {v0, v2}, Lio/teak/sdk/c/h;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Lio/teak/sdk/n;->a(Lio/teak/sdk/n;)Z

    .line 102
    :goto_1
    return-void

    .line 1121
    :cond_1
    const-string v1, "price_string"

    invoke-virtual {v0, v1}, Lio/teak/sdk/e/c;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    const-string v1, "price_string"

    const-string v3, "price_string"

    invoke-virtual {v0, v3}, Lio/teak/sdk/e/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1127
    :catch_0
    move-exception v0

    .line 1128
    :try_start_2
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 99
    :catch_1
    move-exception v0

    .line 100
    sget-object v1, Lio/teak/sdk/Teak;->log:Lio/teak/sdk/e;

    invoke-virtual {v1, v0}, Lio/teak/sdk/e;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
