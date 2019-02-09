.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;
.super Ljava/lang/Object;
.source "Batcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;
    }
.end annotation


# static fields
.field private static final DISABLE_AGING_MAX_AGE:I = 0x0

.field private static final DISABLE_MAX_BYTES:J = 0x0L

.field private static final DISABLE_RECORD_SIZE_WARN:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAgingExecutor:Lrx/Scheduler;

.field private mAgingRunnable:Lrx/functions/Action0;

.field private mAgingTask:Lrx/Subscription;

.field private mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

.field private mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

.field private mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mRecommendedRecordSize:J

.field private mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lrx/Scheduler;)V
    .locals 6
    .param p1, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p3, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;
    .param p4, "schema"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .param p5, "batchSender"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
    .param p6, "executor"    # Lrx/Scheduler;

    .prologue
    const-wide/16 v0, -0x1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mRecommendedRecordSize:J

    .line 209
    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$1;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;)V

    iput-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingRunnable:Lrx/functions/Action0;

    .line 143
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 144
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 145
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .line 146
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .line 147
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 148
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingExecutor:Lrx/Scheduler;

    .line 149
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v2, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 153
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-wide v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-wide v0, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    :cond_0
    iput-wide v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mRecommendedRecordSize:J

    .line 155
    return-void
.end method


# virtual methods
.method public declared-synchronized addPacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)Z
    .locals 12
    .param p1, "packet"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .prologue
    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-wide v4, v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecordSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-wide v6, v6, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 168
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v4, "Upsight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSourceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " record ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 169
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecordSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes) exceeds the maximum "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-wide v6, v6, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes allowed in a batch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 168
    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit p0

    return v2

    .line 176
    :cond_0
    :try_start_1
    iget-wide v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mRecommendedRecordSize:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecordSize()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mRecommendedRecordSize:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 178
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Upsight"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecord()Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v7

    invoke-virtual {v7}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->getSourceType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " record ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 179
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecordSize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes) being added to batch exceeds the recommended "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mRecommendedRecordSize:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes threshold for a single record"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    .line 178
    invoke-interface {v4, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    if-nez v4, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->createNewBatch()V

    .line 190
    :cond_2
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-wide v4, v4, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .line 191
    invoke-virtual {v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->bytesLeft()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->getRecordSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, v10

    if-gez v4, :cond_5

    move v1, v3

    .line 192
    .local v1, "exceedMaxBytes":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->sendCurrentBatch()V

    .line 194
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->createNewBatch()V

    .line 198
    :cond_3
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-virtual {v2, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->addPacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V

    .line 201
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;->capacityLeft()I

    move-result v0

    .line 202
    .local v0, "count":I
    if-nez v0, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->sendCurrentBatch()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move v2, v3

    .line 206
    goto/16 :goto_0

    .end local v0    # "count":I
    .end local v1    # "exceedMaxBytes":Z
    :cond_5
    move v1, v2

    .line 191
    goto :goto_1

    .line 165
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized createNewBatch()V
    .locals 5

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v1, v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->batchCapacity:I

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-wide v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBytes:J

    invoke-direct {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;-><init>(IJ)V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .line 227
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v0, v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingExecutor:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingRunnable:Lrx/functions/Action0;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v2, v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;->maxBatchAge:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingTask:Lrx/Subscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-void

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onApplicationStatus(Lcom/upsight/android/analytics/internal/session/ApplicationStatus;)V
    .locals 2
    .param p1, "appStatus"    # Lcom/upsight/android/analytics/internal/session/ApplicationStatus;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/Updated;
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    if-ne v0, v1, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->sendCurrentBatch()V

    .line 223
    :cond_0
    return-void
.end method

.method declared-synchronized sendCurrentBatch()V
    .locals 4

    .prologue
    .line 233
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .line 234
    .local v0, "batch":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;
    if-eqz v0, :cond_1

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mCurrentBatch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .line 237
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingTask:Lrx/Subscription;

    if-eqz v1, :cond_0

    .line 238
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingTask:Lrx/Subscription;

    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    .line 239
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mAgingTask:Lrx/Subscription;

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mBatchSender:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    new-instance v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    invoke-direct {v2, v0, v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;)V

    invoke-virtual {v1, v2}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->submitRequest(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :cond_1
    monitor-exit p0

    return-void

    .line 233
    .end local v0    # "batch":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
