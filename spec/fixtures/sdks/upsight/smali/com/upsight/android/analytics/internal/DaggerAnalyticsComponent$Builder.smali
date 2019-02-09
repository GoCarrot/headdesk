.class public final Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAnalyticsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

.field private analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

.field private associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

.field private baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

.field private configGsonModule:Lcom/upsight/android/analytics/internal/ConfigGsonModule;

.field private configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

.field private deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

.field private dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

.field private lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

.field private providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

.field private routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

.field private schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

.field private sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/ConfigGsonModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configGsonModule:Lcom/upsight/android/analytics/internal/ConfigGsonModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/SessionModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/association/AssociationModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsApiModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    return-object v0
.end method

.method static synthetic access$900(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    return-object v0
.end method


# virtual methods
.method public analyticsApiModule(Lcom/upsight/android/analytics/internal/AnalyticsApiModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "analyticsApiModule"    # Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    .prologue
    .line 466
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    .line 467
    return-object p0
.end method

.method public analyticsModule(Lcom/upsight/android/analytics/internal/AnalyticsModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 0
    .param p1, "analyticsModule"    # Lcom/upsight/android/analytics/internal/AnalyticsModule;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-object p0
.end method

.method public analyticsSchedulersModule(Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "analyticsSchedulersModule"    # Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    .prologue
    .line 471
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    .line 472
    return-object p0
.end method

.method public associationModule(Lcom/upsight/android/analytics/internal/association/AssociationModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "associationModule"    # Lcom/upsight/android/analytics/internal/association/AssociationModule;

    .prologue
    .line 521
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/association/AssociationModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    .line 522
    return-object p0
.end method

.method public baseAnalyticsModule(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "baseAnalyticsModule"    # Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .prologue
    .line 526
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .line 527
    return-object p0
.end method

.method public build()Lcom/upsight/android/analytics/internal/AnalyticsComponent;
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .line 414
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configGsonModule:Lcom/upsight/android/analytics/internal/ConfigGsonModule;

    if-nez v0, :cond_1

    .line 417
    new-instance v0, Lcom/upsight/android/analytics/internal/ConfigGsonModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/ConfigGsonModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configGsonModule:Lcom/upsight/android/analytics/internal/ConfigGsonModule;

    .line 419
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;

    if-nez v0, :cond_2

    .line 420
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/session/SessionModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;

    .line 422
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    if-nez v0, :cond_3

    .line 423
    new-instance v0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    if-nez v0, :cond_4

    .line 426
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    .line 428
    :cond_4
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    if-nez v0, :cond_5

    .line 429
    new-instance v0, Lcom/upsight/android/analytics/internal/association/AssociationModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/association/AssociationModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    if-nez v0, :cond_6

    .line 432
    new-instance v0, Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/provider/ProviderModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    .line 434
    :cond_6
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    if-nez v0, :cond_7

    .line 435
    new-instance v0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/AnalyticsApiModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    .line 437
    :cond_7
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    if-nez v0, :cond_8

    .line 438
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    .line 440
    :cond_8
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    if-nez v0, :cond_9

    .line 441
    new-instance v0, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    .line 443
    :cond_9
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    if-nez v0, :cond_a

    .line 444
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    .line 446
    :cond_a
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    if-nez v0, :cond_b

    .line 447
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    .line 449
    :cond_b
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    if-nez v0, :cond_c

    .line 450
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    .line 452
    :cond_c
    new-instance v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;-><init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;)V

    return-object v0
.end method

.method public configGsonModule(Lcom/upsight/android/analytics/internal/ConfigGsonModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "configGsonModule"    # Lcom/upsight/android/analytics/internal/ConfigGsonModule;

    .prologue
    .line 476
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/ConfigGsonModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configGsonModule:Lcom/upsight/android/analytics/internal/ConfigGsonModule;

    .line 477
    return-object p0
.end method

.method public configurationModule(Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "configurationModule"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    .prologue
    .line 501
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    .line 502
    return-object p0
.end method

.method public deliveryModule(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "deliveryModule"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    .prologue
    .line 486
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    .line 487
    return-object p0
.end method

.method public dispatchModule(Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "dispatchModule"    # Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    .prologue
    .line 481
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    .line 482
    return-object p0
.end method

.method public lifecycleTrackerModule(Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "lifecycleTrackerModule"    # Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    .prologue
    .line 511
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    .line 512
    return-object p0
.end method

.method public providerModule(Lcom/upsight/android/analytics/internal/provider/ProviderModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "providerModule"    # Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    .prologue
    .line 516
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    .line 517
    return-object p0
.end method

.method public routingModule(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "routingModule"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    .prologue
    .line 491
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    .line 492
    return-object p0
.end method

.method public schemaModule(Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "schemaModule"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    .prologue
    .line 496
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    .line 497
    return-object p0
.end method

.method public sessionModule(Lcom/upsight/android/analytics/internal/session/SessionModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 1
    .param p1, "sessionModule"    # Lcom/upsight/android/analytics/internal/session/SessionModule;

    .prologue
    .line 506
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/SessionModule;

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;

    .line 507
    return-object p0
.end method
