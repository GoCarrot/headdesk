.class public Lcom/upsight/android/analytics/internal/DispatcherService;
.super Landroid/app/Service;
.source "DispatcherService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;
    }
.end annotation


# static fields
.field private static final IDLING_CHECK_DELAY_ON_BACKGROUND:J = 0x7530L

.field private static final IDLING_CHECK_DELAY_PERIODIC:J = 0x927c0L

.field private static final IDLING_INTERVALS_BEFORE_STOP:I = 0x4

.field private static final IDLING_STATUS_CHECK_INTERVAL:J = 0x7530L

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

.field mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIdlingIntervals:I

.field private final mLock:Ljava/lang/Object;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mSelfStopTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lcom/upsight/android/analytics/internal/DispatcherService$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/DispatcherService$1;-><init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mIdlingIntervals:I

    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)I
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 35
    iget v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mIdlingIntervals:I

    return v0
.end method

.method static synthetic access$208(Lcom/upsight/android/analytics/internal/DispatcherService;)I
    .locals 2
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 35
    iget v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mIdlingIntervals:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mIdlingIntervals:I

    return v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/DispatcherService;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/DispatcherService;ZJ)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/DispatcherService;->postIdlingCheck(ZJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/DispatcherService;Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DispatcherService;
    .param p1, "x1"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/DispatcherService;->handle(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V

    return-void
.end method

.method private handle(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .locals 4
    .param p1, "appStatus"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    .prologue
    .line 195
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    if-ne v0, v1, :cond_0

    .line 197
    const/4 v0, 0x0

    const-wide/16 v2, 0x7530

    invoke-direct {p0, v0, v2, v3}, Lcom/upsight/android/analytics/internal/DispatcherService;->postIdlingCheck(ZJ)V

    .line 199
    :cond_0
    return-void
.end method

.method private postIdlingCheck(ZJ)V
    .locals 4
    .param p1, "resetIdlingIntervals"    # Z
    .param p2, "delayMs"    # J

    .prologue
    .line 208
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 213
    if-eqz p1, :cond_0

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mIdlingIntervals:I

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 219
    monitor-exit v1

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onApplicationStatus(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .locals 0
    .param p1, "appStatus"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/DispatcherService;->handle(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V

    .line 155
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 107
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 109
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v1

    .line 110
    .local v1, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v2, "com.upsight.extension.analytics"

    invoke-virtual {v1, v2}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 111
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;

    invoke-interface {v2, p0}, Lcom/upsight/android/analytics/UpsightAnalyticsComponent;->inject(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    .line 114
    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v2

    invoke-interface {v2}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mBus:Lcom/squareup/otto/Bus;

    .line 115
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v2, p0}, Lcom/squareup/otto/Bus;->register(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 118
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v3, Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate()"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    .line 121
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->launch()V

    .line 122
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mConfigurationManager:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->launch()V

    .line 125
    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v2

    const-class v3, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    new-instance v4, Lcom/upsight/android/analytics/internal/DispatcherService$2;

    invoke-direct {v4, p0}, Lcom/upsight/android/analytics/internal/DispatcherService$2;-><init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V

    invoke-interface {v2, v3, v4}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 140
    const-wide/32 v2, 0x927c0

    invoke-direct {p0, v6, v2, v3}, Lcom/upsight/android/analytics/internal/DispatcherService;->postIdlingCheck(ZJ)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/DispatcherService;->stopSelf()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mBus:Lcom/squareup/otto/Bus;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mBus:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->unregister(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;

    invoke-direct {v1}, Lcom/upsight/android/analytics/internal/DispatcherService$DestroyEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mSelfStopTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mDataStoreSubscription:Lcom/upsight/android/persistence/UpsightSubscription;

    invoke-interface {v0}, Lcom/upsight/android/persistence/UpsightSubscription;->unsubscribe()V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DispatcherService;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v1, Lcom/upsight/android/analytics/internal/DispatcherService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onDestroy()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :cond_2
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 182
    return-void
.end method

.method public onSdkTerminateEvent(Lcom/upsight/android/internal/SdkTerminateEvent;)V
    .locals 0
    .param p1, "sdkTerminateEvent"    # Lcom/upsight/android/internal/SdkTerminateEvent;
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/DispatcherService;->stopSelf()V

    .line 160
    return-void
.end method
