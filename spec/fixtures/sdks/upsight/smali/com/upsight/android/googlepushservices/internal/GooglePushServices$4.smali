.class Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;
.super Ljava/lang/Object;
.source "GooglePushServices.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->unregisterInBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;


# direct methods
.method constructor <init>(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 277
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v3

    .line 278
    :try_start_0
    invoke-static {}, Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent;->createBuilder()Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-static {v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$000(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Lcom/upsight/android/UpsightContext;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/upsight/android/analytics/event/comm/UpsightCommUnregisterEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 279
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$400(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)V

    .line 281
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$500(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 282
    .local v1, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$500(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 284
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$602(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 285
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .line 288
    .local v0, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    invoke-interface {v0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onSuccess()V

    goto :goto_0

    .line 285
    .end local v0    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    .end local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 290
    .restart local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 296
    iget-object v3, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    monitor-enter v3

    .line 297
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$500(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 298
    .local v1, "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    invoke-static {v2}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$500(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 300
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->this$0:Lcom/upsight/android/googlepushservices/internal/GooglePushServices;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices;->access$602(Lcom/upsight/android/googlepushservices/internal/GooglePushServices;Z)Z

    .line 301
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;

    .line 304
    .local v0, "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    new-instance v3, Lcom/upsight/android/UpsightException;

    invoke-direct {v3, p1}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v3}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    goto :goto_0

    .line 301
    .end local v0    # "lst":Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;
    .end local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 306
    .restart local v1    # "pendingListeners":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;>;"
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 272
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/upsight/android/googlepushservices/internal/GooglePushServices$4;->onNext(Ljava/lang/String;)V

    return-void
.end method

.method public onNext(Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 311
    return-void
.end method
