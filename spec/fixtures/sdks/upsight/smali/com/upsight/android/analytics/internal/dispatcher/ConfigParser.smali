.class Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$IdentifierFilter;,
        Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$RouteFilter;,
        Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Identifier;,
        Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;,
        Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Dispatcher"


# instance fields
.field private mGson:Lcom/google/gson/Gson;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/google/gson/Gson;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "gson"    # Lcom/google/gson/Gson;
        .annotation runtime Ljavax/inject/Named;
            value = "config-gson"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->mGson:Lcom/google/gson/Gson;

    .line 43
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 44
    return-void
.end method

.method private parseIdentifierConfig(Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;)Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    .locals 7
    .param p1, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;

    .prologue
    .line 77
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;-><init>()V

    .line 78
    .local v0, "builder":Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;
    iget-object v3, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;->identifiers:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;->identifiers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Identifier;

    .line 80
    .local v2, "identifier":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Identifier;
    iget-object v4, v2, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Identifier;->name:Ljava/lang/String;

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, v2, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Identifier;->ids:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v4, v5}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->addIdentifiers(Ljava/lang/String;Ljava/util/Set;)Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;

    goto :goto_0

    .line 82
    .end local v2    # "identifier":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Identifier;
    :cond_0
    iget-object v3, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;->identifierFilters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$IdentifierFilter;

    .line 83
    .local v1, "filter":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$IdentifierFilter;
    iget-object v4, v1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$IdentifierFilter;->filter:Ljava/lang/String;

    iget-object v5, v1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$IdentifierFilter;->identifiers:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->addIdentifierFilter(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;

    goto :goto_1

    .line 86
    .end local v1    # "filter":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$IdentifierFilter;
    :cond_1
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->build()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v3

    return-object v3
.end method

.method private parseQueueConfig(Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;
    .locals 6
    .param p1, "queue"    # Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;

    .prologue
    .line 128
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;-><init>()V

    .line 129
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->formatEndpointAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->setEndpointAddress(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;

    iget-boolean v2, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->countNetworkFail:Z

    iget v3, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->retryInterval:I

    iget v4, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->retryCount:I

    invoke-direct {v1, v2, v3, v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;-><init>(ZII)V

    .line 130
    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->setBatchSenderConfig(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Config;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;

    iget v2, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->maxSize:I

    iget v3, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->maxAge:I

    iget v4, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->maxBytes:I

    int-to-long v4, v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;-><init>(IIJ)V

    .line 131
    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->setBatcherConfig(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Config;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig$Builder;->build()Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;

    move-result-object v0

    .line 128
    return-object v0
.end method

.method private parseRoutingConfig(Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
    .locals 11
    .param p1, "config"    # Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;

    .prologue
    .line 97
    new-instance v3, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;

    invoke-direct {v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;-><init>()V

    .line 98
    .local v3, "routingBuilder":Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;
    iget-object v5, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;->queues:Ljava/util/List;

    if-eqz v5, :cond_5

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v2, "queueConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;->queues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;

    .line 101
    .local v1, "queue":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;
    iget-object v6, v1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->name:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->parseQueueConfig(Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->addQueueConfig(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/delivery/QueueConfig;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;

    .line 102
    iget-object v6, v1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;->name:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    .end local v1    # "queue":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Queue;
    :cond_0
    iget-object v5, p1, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;->routeFilters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$RouteFilter;

    .line 105
    .local v0, "filter":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$RouteFilter;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v4, "validQueues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, v0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$RouteFilter;->queues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "queue":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "trash"

    .line 108
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 109
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_3
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v8, "Dispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dispatcher ignored a route to a non-existent queue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in the dispatcher configuration"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 115
    .end local v1    # "queue":Ljava/lang/String;
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 116
    iget-object v6, v0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$RouteFilter;->filter:Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->addRoute(Ljava/lang/String;Ljava/util/List;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;

    goto :goto_1

    .line 120
    .end local v0    # "filter":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$RouteFilter;
    .end local v2    # "queueConfigs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "validQueues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v3}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig$Builder;->build()Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public parseConfig(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/Config;
    .locals 6
    .param p1, "configContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->mGson:Lcom/google/gson/Gson;

    const-class v5, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;

    invoke-virtual {v4, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .local v0, "config":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;
    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->parseIdentifierConfig(Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;)Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    move-result-object v2

    .line 63
    .local v2, "identifierConfig":Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    invoke-direct {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser;->parseRoutingConfig(Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;

    move-result-object v3

    .line 65
    .local v3, "routingConfig":Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
    new-instance v4, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;

    invoke-direct {v4}, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;-><init>()V

    .line 66
    invoke-virtual {v4, v3}, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->setRoutingConfig(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;)Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;

    move-result-object v4

    .line 67
    invoke-virtual {v4, v2}, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->setIdentifierConfig(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;)Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;

    move-result-object v4

    .line 68
    invoke-virtual {v4}, Lcom/upsight/android/analytics/internal/dispatcher/Config$Builder;->build()Lcom/upsight/android/analytics/internal/dispatcher/Config;

    move-result-object v4

    .line 65
    return-object v4

    .line 58
    .end local v0    # "config":Lcom/upsight/android/analytics/internal/dispatcher/ConfigParser$Config;
    .end local v2    # "identifierConfig":Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    .end local v3    # "routingConfig":Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingConfig;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Lcom/google/gson/JsonSyntaxException;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
