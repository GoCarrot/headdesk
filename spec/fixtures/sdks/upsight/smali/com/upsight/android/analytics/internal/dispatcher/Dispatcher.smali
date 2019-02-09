.class public Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;


# static fields
.field public static final CONFIGURATION_SUBTYPE:Ljava/lang/String; = "upsight.configuration.dispatcher"

.field static final DISPATCHER_CONFIGURATION_MAX_SESSIONS:I = 0x2

.field static final FETCH_PAGE_SIZE:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "Dispatcher"


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field private mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

.field private mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

.field private mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

.field private volatile mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field private mExpiredRouters:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;",
            ">;"
        }
    .end annotation
.end field

.field mFetchPageDelay:J

.field mFetchPageId:I

.field private mIsLaunched:Z

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mObserveOnScheduler:Lrx/Scheduler;

.field private mPendingRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

.field private mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

.field private mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

.field private mSubscribeOnScheduler:Lrx/Scheduler;

.field private final mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private mUnroutedRecords:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/AnalyticsContext;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/squareup/otto/Bus;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 2
    .param p1, "context"    # Lcom/upsight/android/analytics/internal/AnalyticsContext;
    .param p2, "subscribeOnScheduler"    # Lrx/Scheduler;
    .param p3, "observeOnScheduler"    # Lrx/Scheduler;
    .param p4, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p5, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p6, "configParser"    # Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;
    .param p7, "routerBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;
    .param p8, "schemaSelectorBuilder"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .param p9, "bus"    # Lcom/squareup/otto/Bus;
    .param p10, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    .line 130
    iput v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageId:I

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageDelay:J

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscriptions:Ljava/util/List;

    .line 152
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

    .line 153
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscribeOnScheduler:Lrx/Scheduler;

    .line 154
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mObserveOnScheduler:Lrx/Scheduler;

    .line 155
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 156
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 157
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

    .line 158
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

    .line 159
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    .line 160
    iput-object p9, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mBus:Lcom/squareup/otto/Bus;

    .line 161
    iput-object p10, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 162
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscriptions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lrx/Scheduler;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mObserveOnScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lrx/Scheduler;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscribeOnScheduler:Lrx/Scheduler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .param p1, "x1"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyDefaultConfiguration()V

    return-void
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method private applyConfiguration(Ljava/lang/String;)Z
    .locals 11
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 333
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;

    move-result-object v0

    .line 334
    .local v0, "config":Lcom/upsight/android/analytics/internal/dispatcher/Config;
    if-nez v0, :cond_0

    .line 369
    :goto_0
    return v6

    .line 338
    :cond_0
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->isValid()Z

    move-result v8

    if-nez v8, :cond_1

    .line 339
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v8, "Dispatcher"

    const-string v9, "Incoming configuration is not valid"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 343
    :cond_1
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    invoke-virtual {v0, v6}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v7

    .line 344
    goto :goto_0

    .line 346
    :cond_2
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 348
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 349
    .local v2, "expiredRouters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 350
    .local v1, "currentRouter":Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 351
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishRouting()V

    .line 355
    :cond_3
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getIdentifierConfig()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->buildSelectorByName(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    move-result-object v3

    .line 356
    .local v3, "selectorByName":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSchemaSelectorBuilder:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getIdentifierConfig()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->buildSelectorByType(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;

    move-result-object v4

    .line 357
    .local v4, "selectorByType":Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;, "Lcom/upsight/android/analytics/internal/dispatcher/util/Selector<Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;>;"
    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mRouterBuilder:Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Config;->getRoutingConfig()Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    move-result-object v8

    invoke-virtual {v6, v8, v3, v4, p0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RouterBuilder;->build(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;)Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    move-result-object v6

    iput-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 359
    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 360
    .local v5, "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    if-eqz v6, :cond_4

    .line 361
    :goto_1
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 362
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    invoke-virtual {p0, v6}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    goto :goto_1

    .line 367
    :cond_4
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCreatedRecords()V

    move v6, v7

    .line 369
    goto :goto_0
.end method

.method private applyDefaultConfiguration()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mContext:Lcom/upsight/android/analytics/internal/AnalyticsContext;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/AnalyticsContext;->getDefaultDispatcherConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    .line 323
    return-void
.end method

.method private fetchCreatedRecords()V
    .locals 6

    .prologue
    .line 168
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscriptions:Ljava/util/List;

    monitor-enter v1

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscriptions:Ljava/util/List;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v3, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    invoke-interface {v2, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v2

    const/16 v3, 0x64

    .line 170
    invoke-virtual {v2, v3}, Lrx/Observable;->window(I)Lrx/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscribeOnScheduler:Lrx/Scheduler;

    .line 171
    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mObserveOnScheduler:Lrx/Scheduler;

    .line 172
    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    new-instance v4, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;

    invoke-direct {v4, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$2;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    new-instance v5, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;

    invoke-direct {v5, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    .line 173
    invoke-virtual {v2, v3, v4, v5}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v2

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v1

    .line 221
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private fetchCurrentConfig()V
    .locals 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$4;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$4;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 295
    return-void
.end method

.method private isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z
    .locals 2
    .param p1, "configuration"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v0}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getLatestSessionInfo()Lcom/upsight/android/analytics/session/UpsightSessionInfo;

    move-result-object v0

    iget v0, v0, Lcom/upsight/android/analytics/session/UpsightSessionInfo;->sessionNumber:I

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getSessionNumberCreated()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseConfiguration(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    .locals 7
    .param p1, "jsonConfig"    # Ljava/lang/String;

    .prologue
    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "config":Lcom/upsight/android/analytics/internal/dispatcher/Config;
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mConfigParser:Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;

    invoke-virtual {v2, p1}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->parseConfig(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 385
    :goto_0
    return-object v0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v3, "Dispatcher"

    const-string v4, "Could not apply incoming config"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->terminate()V

    .line 459
    return-void
.end method

.method public hasPendingRecords()Z
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 453
    .local v0, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized launch()V
    .locals 1

    .prologue
    .line 465
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 480
    :goto_0
    monitor-exit p0

    return-void

    .line 468
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z

    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 472
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 473
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 474
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 476
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 477
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 479
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCurrentConfig()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationCreated(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)V
    .locals 2
    .param p1, "config"    # Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 299
    const-string v0, "upsight.configuration.dispatcher"

    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->isUpsightConfigurationValid(Lcom/upsight/android/analytics/configuration/UpsightConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->applyConfiguration(Ljava/lang/String;)Z

    .line 303
    :cond_0
    return-void
.end method

.method public onDataStoreRecordCreated(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .locals 0
    .param p1, "storedRecord"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    .line 232
    return-void
.end method

.method public onDelivery(Lcom/upsight/android/analytics/internal/DataStoreRecord;ZZLjava/lang/String;)V
    .locals 4
    .param p1, "record"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .param p2, "isSuccessful"    # Z
    .param p3, "isTrashed"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    .line 399
    if-eqz p2, :cond_3

    .line 400
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->fromSuccess(Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    move-result-object v1

    .line 405
    .local v1, "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    :goto_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$5;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$5;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v2, v1, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 417
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v2, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 422
    .local v0, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-eqz v0, :cond_2

    .line 423
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 425
    :cond_2
    return-void

    .line 402
    .end local v0    # "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    .end local v1    # "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    :cond_3
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;->fromFailure(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    move-result-object v1

    .restart local v1    # "status":Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;
    goto :goto_0
.end method

.method public onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$6;

    invoke-direct {v1, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$6;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V

    invoke-interface {v0, p1, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 440
    return-void
.end method

.method public onRoutingFinished(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)V
    .locals 1
    .param p1, "rm"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 391
    .local v0, "expiredRouters":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;>;"
    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 394
    :cond_0
    return-void
.end method

.method routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .locals 5
    .param p1, "storedRecord"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 240
    sget-object v3, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->Created:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getAction()Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUpsightDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v3, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 247
    .local v0, "currentRouter":Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 248
    .local v1, "pendingRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    if-nez v0, :cond_2

    .line 249
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 250
    .local v2, "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    invoke-interface {v2, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    invoke-interface {v2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    .end local v2    # "unroutedRecords":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    :cond_2
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->routeEvent(Lcom/upsight/android/analytics/internal/DataStoreRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 255
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public declared-synchronized terminate()V
    .locals 6

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v1, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 489
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscriptions:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 490
    :try_start_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    .line 491
    .local v0, "subscription":Lrx/Subscription;
    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    goto :goto_0

    .line 495
    .end local v0    # "subscription":Lrx/Subscription;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 486
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 493
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 494
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageDelay:J

    .line 495
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 497
    :try_start_4
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->finishRouting()V

    .line 499
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 501
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v1}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 505
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentConfig:Lcom/upsight/android/analytics/internal/dispatcher/Config;

    .line 506
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mPendingRecords:Ljava/util/Set;

    .line 507
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mUnroutedRecords:Ljava/util/Queue;

    .line 508
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mExpiredRouters:Ljava/util/Collection;

    .line 509
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mCurrentRouter:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    .line 511
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mIsLaunched:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 512
    monitor-exit p0

    return-void
.end method
