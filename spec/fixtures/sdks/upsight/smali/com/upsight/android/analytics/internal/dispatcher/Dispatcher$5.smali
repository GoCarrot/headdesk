.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$5;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->onDelivery(Lcom/upsight/android/analytics/internal/DataStoreRecord;ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightDataStoreListener",
        "<",
        "Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$5;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 4
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$5;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "Could not store DeliveryStatus."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public onSuccess(Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;)V
    .locals 1
    .param p1, "result"    # Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$5;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$800(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 409
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 405
    check-cast p1, Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$5;->onSuccess(Lcom/upsight/android/analytics/dispatcher/AnalyticsEventDeliveryStatus;)V

    return-void
.end method
