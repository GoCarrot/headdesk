.class Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;
.super Ljava/lang/Object;
.source "AssociationManagerImpl.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/association/AssociationManager;


# static fields
.field static final ASSOCIATION_EXPIRY:J = 0x240c8400L

.field private static final KEY_UPSIGHT_DATA:Ljava/lang/String; = "upsight_data"


# instance fields
.field private final mAssociations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/internal/association/Association;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mClock:Lcom/upsight/android/analytics/internal/session/Clock;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mIsLaunched:Z


# direct methods
.method constructor <init>(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/session/Clock;)V
    .locals 1
    .param p1, "dataStore"    # Lcom/upsight/android/persistence/UpsightDataStore;
    .param p2, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mIsLaunched:Z

    .line 70
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 71
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mAssociations:Ljava/util/Map;

    .line 73
    return-void
.end method


# virtual methods
.method declared-synchronized addAssociation(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "association"    # Lcom/upsight/android/analytics/internal/association/Association;

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 177
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 171
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mAssociations:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 172
    .local v0, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    if-nez v0, :cond_2

    .line 173
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 175
    .restart local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mAssociations:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    .end local v0    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized associate(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 85
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->associateInner(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized associateInner(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 18
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventNode"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mAssociations:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 109
    .local v4, "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    if-eqz v4, :cond_5

    .line 110
    const/4 v11, 0x0

    .line 113
    .local v11, "isMatched":Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 114
    .local v12, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 115
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/analytics/internal/association/Association;

    .line 118
    .local v2, "association":Lcom/upsight/android/analytics/internal/association/Association;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    invoke-interface {v14}, Lcom/upsight/android/analytics/internal/session/Clock;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getTimestampMs()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x240c8400

    cmp-long v14, v14, v16

    if-lez v14, :cond_1

    .line 120
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 121
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getId()Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "id":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v15, Lcom/upsight/android/analytics/internal/association/Association;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    invoke-interface/range {v14 .. v16}, Lcom/upsight/android/persistence/UpsightDataStore;->removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v14

    invoke-virtual {v14}, Lrx/Observable;->subscribe()Lrx/Subscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 108
    .end local v2    # "association":Lcom/upsight/android/analytics/internal/association/Association;
    .end local v4    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "isMatched":Z
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 125
    .restart local v2    # "association":Lcom/upsight/android/analytics/internal/association/Association;
    .restart local v4    # "associations":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/internal/association/Association;>;"
    .restart local v11    # "isMatched":Z
    .restart local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/association/Association;>;"
    :cond_1
    if-nez v11, :cond_0

    .line 127
    :try_start_1
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getUpsightDataFilter()Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;

    move-result-object v9

    .line 128
    .local v9, "filter":Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    const-string v14, "upsight_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 129
    .local v3, "associationNode":Lcom/google/gson/JsonElement;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 130
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v6

    .line 131
    .local v6, "eventUpsightData":Lcom/google/gson/JsonObject;
    iget-object v14, v9, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;->matchKey:Ljava/lang/String;

    invoke-virtual {v6, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 132
    .local v5, "eventMatchValue":Lcom/google/gson/JsonElement;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 133
    iget-object v14, v9, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;->matchValues:Lcom/google/gson/JsonArray;

    invoke-virtual {v14}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gson/JsonElement;

    .line 134
    .local v13, "matchValue":Lcom/google/gson/JsonElement;
    invoke-virtual {v5, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 136
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getUpsightData()Lcom/google/gson/JsonObject;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 137
    .local v8, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 138
    .local v7, "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/gson/JsonElement;

    invoke-virtual {v6, v14, v15}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 142
    .end local v7    # "field":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    .line 143
    invoke-virtual {v2}, Lcom/upsight/android/analytics/internal/association/Association;->getId()Ljava/lang/String;

    move-result-object v10

    .line 144
    .restart local v10    # "id":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v15, Lcom/upsight/android/analytics/internal/association/Association;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    invoke-interface/range {v14 .. v16}, Lcom/upsight/android/persistence/UpsightDataStore;->removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;

    move-result-object v14

    invoke-virtual {v14}, Lrx/Observable;->subscribe()Lrx/Subscription;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    :cond_4
    const/4 v11, 0x1

    .line 149
    goto/16 :goto_0

    .line 157
    .end local v2    # "association":Lcom/upsight/android/analytics/internal/association/Association;
    .end local v3    # "associationNode":Lcom/google/gson/JsonElement;
    .end local v5    # "eventMatchValue":Lcom/google/gson/JsonElement;
    .end local v6    # "eventUpsightData":Lcom/google/gson/JsonObject;
    .end local v8    # "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    .end local v9    # "filter":Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "isMatched":Z
    .end local v12    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/upsight/android/analytics/internal/association/Association;>;"
    .end local v13    # "matchValue":Lcom/google/gson/JsonElement;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public handleCreate(Lcom/upsight/android/analytics/internal/association/Association;)V
    .locals 1
    .param p1, "association"    # Lcom/upsight/android/analytics/internal/association/Association;
    .annotation runtime Lcom/upsight/android/persistence/annotation/Created;
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/association/Association;->getWith()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->addAssociation(Ljava/lang/String;Lcom/upsight/android/analytics/internal/association/Association;)V

    .line 91
    return-void
.end method

.method public declared-synchronized launch()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mIsLaunched:Z

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mIsLaunched:Z

    .line 79
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->launchInner()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized launchInner()V
    .locals 2

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v0, p0}, Lcom/upsight/android/persistence/UpsightDataStore;->subscribe(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 98
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/internal/association/Association;

    invoke-interface {v0, v1}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl$1;-><init>(Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
