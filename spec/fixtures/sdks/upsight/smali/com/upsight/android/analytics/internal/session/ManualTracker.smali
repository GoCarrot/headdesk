.class Lcom/upsight/android/analytics/internal/session/ManualTracker;
.super Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
.source "ManualTracker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBus:Lcom/squareup/otto/Bus;

.field private mContainsUntrackedActivity:Z

.field private mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mIsTaskRootStopped:Z

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/upsight/android/analytics/internal/session/ManualTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p2, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mContainsUntrackedActivity:Z

    .line 45
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mIsTaskRootStopped:Z

    .line 55
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 56
    invoke-virtual {p2}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 57
    invoke-virtual {p2}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->bus()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mBus:Lcom/squareup/otto/Bus;

    .line 58
    invoke-virtual {p2}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/session/ManualTracker;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/session/ManualTracker;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method private static isPurgeable(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 222
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeAndPurge(Ljava/util/Set;Landroid/app/Activity;)V
    .locals 3
    .param p1, "reference"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "activitySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 210
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 212
    .local v0, "activity":Landroid/app/Activity;
    if-eq v0, p1, :cond_1

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->isPurgeable(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 216
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_2
    return-void
.end method


# virtual methods
.method public track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "activityState"    # Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;
    .param p3, "sessionInitializer"    # Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 67
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    instance-of v1, p1, Lcom/upsight/android/analytics/UpsightActivityInterfaces;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/upsight/android/analytics/UpsightActivityInterfaces;

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightActivityInterfaces;->isActivityTracked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 73
    iput-boolean v6, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mContainsUntrackedActivity:Z

    .line 74
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " marked for exclusion from tracking"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_2
    sget-object v1, Lcom/upsight/android/analytics/internal/session/ManualTracker$3;->$SwitchMap$com$upsight$android$analytics$UpsightLifeCycleTracker$ActivityState:[I

    invoke-virtual {p2}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 201
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mBus:Lcom/squareup/otto/Bus;

    new-instance v2, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;

    invoke-direct {v2, p1, p2}, Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityTrackEvent;-><init>(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Track starting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isTaskRoot="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 85
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v2, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    new-instance v3, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/session/ManualTracker$1;-><init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 124
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 125
    .local v0, "activityIntent":Landroid/content/Intent;
    if-eqz v0, :cond_4

    const-string v1, "pushMessage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 126
    :cond_4
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v1, p3}, Lcom/upsight/android/analytics/internal/session/SessionManager;->startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    .line 128
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Request to start new Upsight session"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    .end local v0    # "activityIntent":Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Track stopping of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/internal/session/ManualTracker;->removeAndPurge(Ljava/util/Set;Landroid/app/Activity;)V

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 144
    iput-boolean v6, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mIsTaskRootStopped:Z

    .line 146
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clear task root stopped condition with task root Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :cond_6
    iget-boolean v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mContainsUntrackedActivity:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mIsTaskRootStopped:Z

    if-eqz v1, :cond_3

    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mActivitySet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v2, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    new-instance v3, Lcom/upsight/android/analytics/internal/session/ManualTracker$2;

    invoke-direct {v3, p0}, Lcom/upsight/android/analytics/internal/session/ManualTracker$2;-><init>(Lcom/upsight/android/analytics/internal/session/ManualTracker;)V

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 192
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/SessionManager;->stopSession()V

    .line 194
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ManualTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v2, Lcom/upsight/android/analytics/internal/session/ManualTracker;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Request to stop current Upsight session"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
