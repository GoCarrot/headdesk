.class Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$3;
.super Ljava/lang/Object;
.source "Dispatcher.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->call(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

.field final synthetic val$pageId:I


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$3;->this$1:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    iput p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$3;->val$pageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$3;->this$1:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;

    iget-object v0, v0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Dispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Routing page "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/Dispatcher$1$3;->val$pageId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of records completed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    return-void
.end method
