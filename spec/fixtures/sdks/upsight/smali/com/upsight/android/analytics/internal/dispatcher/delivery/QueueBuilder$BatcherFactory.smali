.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;
.super Ljava/lang/Object;
.source "QueueBuilder.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatcherFactory"
.end annotation


# instance fields
.field private mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

.field private mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;)V
    .locals 0
    .param p2, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p4, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    .line 207
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 208
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 209
    return-void
.end method


# virtual methods
.method public create(Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;
    .locals 7
    .param p1, "schema"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    .param p2, "batchSender"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    .prologue
    .line 213
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->mConfig:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder$BatcherFactory;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;

    invoke-static {v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueBuilder;)Lrx/Scheduler;

    move-result-object v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;-><init>(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lrx/Scheduler;)V

    return-object v0
.end method
