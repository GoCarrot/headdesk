.class Lcom/upsight/android/analytics/internal/DispatcherService$1;
.super Ljava/lang/Object;
.source "DispatcherService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/DispatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/DispatcherService;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/DispatcherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/DispatcherService;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 79
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$000(Lcom/upsight/android/analytics/internal/DispatcherService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    iget-object v1, v1, Lcom/upsight/android/analytics/internal/DispatcherService;->mDispatcher:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->hasPendingRecords()Z

    move-result v0

    .line 82
    .local v0, "hasPendingRecords":Z
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$300(Lcom/upsight/android/analytics/internal/DispatcherService;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    invoke-static {}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Idling check hasPendingRecords="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIdlingIntervals="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    .line 83
    invoke-static {v5}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 82
    invoke-interface {v1, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    if-eqz v0, :cond_0

    .line 87
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    const/4 v3, 0x1

    const-wide/32 v4, 0x927c0

    invoke-static {v1, v3, v4, v5}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$400(Lcom/upsight/android/analytics/internal/DispatcherService;ZJ)V

    .line 99
    :goto_0
    monitor-exit v2

    .line 100
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$200(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    .line 91
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$300(Lcom/upsight/android/analytics/internal/DispatcherService;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    invoke-static {}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Request to destroy"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v1, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-virtual {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->stopSelf()V

    goto :goto_0

    .line 99
    .end local v0    # "hasPendingRecords":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 95
    .restart local v0    # "hasPendingRecords":Z
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    invoke-static {v1}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$208(Lcom/upsight/android/analytics/internal/DispatcherService;)I

    .line 96
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/DispatcherService$1;->this$0:Lcom/upsight/android/analytics/internal/DispatcherService;

    const/4 v3, 0x0

    const-wide/16 v4, 0x7530

    invoke-static {v1, v3, v4, v5}, Lcom/upsight/android/analytics/internal/DispatcherService;->access$400(Lcom/upsight/android/analytics/internal/DispatcherService;ZJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
