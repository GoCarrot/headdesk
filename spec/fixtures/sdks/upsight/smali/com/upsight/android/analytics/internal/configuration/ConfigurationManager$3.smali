.class Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->onEndpointResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
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
        "Ljava/util/Set",
        "<",
        "Lcom/upsight/android/analytics/configuration/UpsightConfiguration;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

.field final synthetic val$configs:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/util/Collection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    iput-object p2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->val$configs:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 0
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 327
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->onSuccess(Ljava/util/Set;)V

    return-void
.end method

.method public onSuccess(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/configuration/UpsightConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .line 305
    .local v1, "configuration":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$700(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    goto :goto_0

    .line 309
    .end local v1    # "configuration":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    :cond_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->val$configs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .line 310
    .local v0, "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    const-string v3, "upsight.configuration.configurationManager"

    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v3

    const-string v4, "Configuration"

    const-string v5, "Try to apply newly arrived configurations"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$500(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$700(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    goto :goto_1

    .line 319
    :cond_2
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$3;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$700(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    goto :goto_1

    .line 322
    .end local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    :cond_3
    return-void
.end method
