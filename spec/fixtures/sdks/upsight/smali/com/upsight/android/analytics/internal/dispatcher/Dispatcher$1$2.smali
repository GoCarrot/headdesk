.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$2;
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
        "Ljava/lang/Throwable;",
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
    .line 189
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$2;->this$1:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$2;->this$1:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    iget-object v0, v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Dispatcher"

    const-string v2, "Could not receive records from page"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    return-void
.end method
