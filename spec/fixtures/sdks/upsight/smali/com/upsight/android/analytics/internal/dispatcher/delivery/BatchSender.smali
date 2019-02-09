.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
.super Ljava/lang/Object;
.source "BatchSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$RetryTask;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
    }
.end annotation


# instance fields
.field private mBatchSendExecutor:Lrx/Scheduler;

.field private final mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

.field private mDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

.field private mEndpoint:Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

.field private mJsonParser:Lcom/google/gson/JsonParser;

.field private mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mResponseListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

.field private mResponseParser:Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

.field private mRetryExecutor:Lrx/Scheduler;

.field private mTryCounts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;Lrx/Scheduler;Lrx/Scheduler;Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;Lcom/google/gson/JsonParser;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;
    .param p3, "retryExecutor"    # Lrx/Scheduler;
    .param p4, "sendExecutor"    # Lrx/Scheduler;
    .param p5, "endpoint"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
    .param p6, "responseParser"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
    .param p7, "jsonParser"    # Lcom/google/gson/JsonParser;
    .param p8, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .param p9, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 151
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mEndpoint:Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

    .line 152
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    .line 153
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mRetryExecutor:Lrx/Scheduler;

    .line 154
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mJsonParser:Lcom/google/gson/JsonParser;

    .line 156
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mBatchSendExecutor:Lrx/Scheduler;

    .line 158
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    .line 160
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 162
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseParser:Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

    .line 163
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 164
    iput-object p9, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/UpsightContext;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .param p1, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
    .param p2, "x2"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->sendFailed(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/google/gson/JsonParser;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mJsonParser:Lcom/google/gson/JsonParser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/session/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mEndpoint:Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseParser:Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->notifyResponseListener(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .locals 0
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .param p1, "x1"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->sendSucceeded(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V

    return-void
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method

.method private notifyDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)V
    .locals 3
    .param p1, "batch"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .prologue
    .line 177
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->getPackets()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .line 181
    .local v0, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    invoke-interface {v2, v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;->onDelivery(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 185
    .end local v0    # "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 187
    return-void
.end method

.method private notifyResponseListener(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/dispatcher/EndpointResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "responses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

    if-eqz v1, :cond_0

    .line 202
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    .line 203
    .local v0, "response":Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

    invoke-interface {v2, v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;->onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    .end local v0    # "response":Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 209
    return-void
.end method

.method private sendFailed(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    .locals 7
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
    .param p2, "failReason"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;
    .param p3, "errorString"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 246
    .local v1, "tryCount":Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 247
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->maxRetryCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 250
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_3

    .line 251
    sget-object v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget-boolean v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->countNetworkFail:Z

    if-eqz v2, :cond_2

    .line 252
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 254
    :cond_2
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mRetryExecutor:Lrx/Scheduler;

    invoke-virtual {v2}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v2

    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$2;

    invoke-direct {v3, p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$2;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget v4, v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;->retryInterval:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    .line 269
    :goto_0
    return-void

    .line 263
    :cond_3
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v2, p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->getPackets()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .line 265
    .local v0, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    invoke-virtual {v0, p3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->failRouteStep(Ljava/lang/String;)V

    goto :goto_1

    .line 267
    .end local v0    # "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    :cond_4
    iget-object v2, p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-direct {p0, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->notifyDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)V

    goto :goto_0
.end method

.method private sendSucceeded(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .locals 3
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 229
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mTryCounts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v1, p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->getPackets()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .line 232
    .local v0, "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->markDelivered()V

    goto :goto_0

    .line 235
    .end local v0    # "packet":Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;
    :cond_0
    iget-object v1, p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-direct {p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->notifyDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;)V

    .line 236
    return-void
.end method


# virtual methods
.method public setDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;)V
    .locals 2
    .param p1, "deliveryListener"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 170
    :try_start_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    return-void

    .line 172
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setResponseListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;)V
    .locals 2
    .param p1, "responseListener"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 192
    :try_start_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 196
    return-void

    .line 194
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mListenersLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public submitRequest(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .locals 2
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mBatchSendExecutor:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$1;

    invoke-direct {v1, p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 223
    return-void
.end method
