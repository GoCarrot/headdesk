.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->fetchCreatedRecords()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$3;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->mFetchPageDelay:J

    .line 217
    monitor-exit v1

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
