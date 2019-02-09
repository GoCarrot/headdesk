.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$1;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->call(Lrx/Observable;)V
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
        "Lcom/upsight/android/analytics/internal/DataStoreRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$1;->this$1:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V
    .locals 1
    .param p1, "dataStoreRecord"    # Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$1;->this$1:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    iget-object v0, v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->routeRecords(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    .line 188
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 184
    check-cast p1, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$1;->call(Lcom/upsight/android/analytics/internal/DataStoreRecord;)V

    return-void
.end method
