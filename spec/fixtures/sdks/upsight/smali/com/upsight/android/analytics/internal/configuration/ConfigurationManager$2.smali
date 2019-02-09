.class Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->fetchCurrentConfig()V
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


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 5
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "Configuration"

    const-string v2, "Could not fetch existing configurations from datastore"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$600(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    .line 205
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 176
    check-cast p1, Ljava/util/Set;

    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->onSuccess(Ljava/util/Set;)V

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
    .line 180
    .local p1, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/configuration/UpsightConfiguration;>;"
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v2}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$200(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    const/4 v1, 0x0

    .line 185
    .local v1, "hasApplied":Z
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;

    .line 186
    .local v0, "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    const-string v3, "upsight.configuration.configurationManager"

    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$000(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v3

    const-string v4, "Configuration"

    const-string v5, "Apply local configurations"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/configuration/UpsightConfiguration;->getConfiguration()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$500(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    .line 193
    .end local v0    # "config":Lcom/upsight/android/analytics/configuration/UpsightConfiguration;
    :cond_3
    if-nez v1, :cond_0

    .line 194
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-static {v2}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$600(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V

    goto :goto_0
.end method
