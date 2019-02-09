.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCreatedRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/Observable",
        "<",
        "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->call(Lrx/Observable;)V

    return-void
.end method

.method public call(Lrx/Observable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "dataStoreRecordObservable":Lrx/Observable;, "Lrx/Observable<Lcom/upsight/android/analytics/internal/DataStoreRecord;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    iget v0, v1, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageId:I

    .line 178
    .local v0, "pageId":I
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v3, "Dispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of records for routing in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    iget-wide v6, v5, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageDelay:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " min"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    iget-wide v4, v3, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageDelay:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object v6, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v6}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lrx/Scheduler;

    move-result-object v6

    invoke-virtual {p1, v4, v5, v3, v6}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .line 182
    invoke-static {v4}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lrx/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .line 183
    invoke-static {v4}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lrx/Scheduler;

    move-result-object v4

    invoke-virtual {v3, v4}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$1;

    invoke-direct {v4, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$1;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;)V

    new-instance v5, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$2;

    invoke-direct {v5, p0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$2;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;)V

    new-instance v6, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$3;

    invoke-direct {v6, p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$3;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;I)V

    .line 184
    invoke-virtual {v3, v4, v5, v6}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v3

    .line 181
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    iget v3, v1, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageId:I

    .line 203
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    iget-wide v4, v1, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageDelay:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageDelay:J

    .line 204
    monitor-exit v2

    .line 205
    return-void

    .line 204
    .end local v0    # "pageId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
