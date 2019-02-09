.class public Lcom/upsight/android/analytics/internal/action/ActionMap;
.super Ljava/util/HashMap;
.source "ActionMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/internal/action/Actionable;",
        "U:",
        "Lcom/upsight/android/analytics/internal/action/ActionContext;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/upsight/android/analytics/internal/action/Action",
        "<TT;TU;>;>;>;"
    }
.end annotation


# static fields
.field private static final ACTIONS:Ljava/lang/String; = "actions"

.field private static final LOG_TEMPLATE_ACTION:Ljava/lang/String; = "  -> %1$s"

.field private static final LOG_TEMPLATE_TRIGGER:Ljava/lang/String; = "%1$s on %2$s:"

.field private static final TAG:Ljava/lang/String;

.field private static final TRIGGER:Ljava/lang/String; = "trigger"


# instance fields
.field private mActiveActionCount:I

.field private mIsActionMapCompleted:Z

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/upsight/android/analytics/internal/action/ActionMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/action/ActionMap;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/action/ActionFactory;Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/google/gson/JsonArray;)V
    .locals 16
    .param p3, "actionMapJSON"    # Lcom/google/gson/JsonArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/action/ActionFactory",
            "<TT;TU;>;TU;",
            "Lcom/google/gson/JsonArray;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    .local p1, "actionFactory":Lcom/upsight/android/analytics/internal/action/ActionFactory;, "Lcom/upsight/android/analytics/internal/action/ActionFactory<TT;TU;>;"
    .local p2, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;, "TU;"
    invoke-direct/range {p0 .. p0}, Ljava/util/HashMap;-><init>()V

    .line 39
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    .line 44
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mIsActionMapCompleted:Z

    .line 59
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 61
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/google/gson/JsonArray;->isJsonArray()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 62
    invoke-virtual/range {p3 .. p3}, Lcom/google/gson/JsonArray;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 65
    .local v10, "triggerItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 66
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonElement;

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v11

    .line 67
    .local v11, "triggerObject":Lcom/google/gson/JsonObject;
    const-string v12, "trigger"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    .line 68
    .local v9, "trigger":Lcom/google/gson/JsonElement;
    const-string v12, "actions"

    invoke-virtual {v11, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 69
    .local v3, "actionArray":Lcom/google/gson/JsonElement;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 71
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    .line 72
    .local v8, "numActions":I
    if-lez v8, :cond_0

    .line 74
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v5, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v8, :cond_1

    .line 76
    const/4 v4, 0x0

    .line 78
    .local v4, "actionJSON":Lcom/google/gson/JsonObject;
    :try_start_0
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 79
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v4}, Lcom/upsight/android/analytics/internal/action/ActionFactory;->create(Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/internal/action/Action;

    move-result-object v2

    .line 80
    .local v2, "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
    :catch_0
    move-exception v6

    .line 82
    .local v6, "e":Lcom/upsight/android/UpsightException;
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/upsight/android/analytics/internal/action/ActionContext;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v13, Lcom/upsight/android/analytics/internal/action/ActionMap;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to create action from actionJSON="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v12, v13, v6, v14, v15}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 87
    .end local v4    # "actionJSON":Lcom/google/gson/JsonObject;
    .end local v6    # "e":Lcom/upsight/android/UpsightException;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_0

    .line 88
    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v5}, Lcom/upsight/android/analytics/internal/action/ActionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 94
    .end local v3    # "actionArray":Lcom/google/gson/JsonElement;
    .end local v5    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    .end local v7    # "i":I
    .end local v8    # "numActions":I
    .end local v9    # "trigger":Lcom/google/gson/JsonElement;
    .end local v10    # "triggerItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gson/JsonElement;>;"
    .end local v11    # "triggerObject":Lcom/google/gson/JsonObject;
    :cond_2
    return-void
.end method

.method private isFinished()Z
    .locals 1

    .prologue
    .line 147
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    iget-boolean v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mIsActionMapCompleted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appendActionToTrigger(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Action;)V
    .locals 4
    .param p1, "trigger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/internal/action/Action",
            "<TT;TU;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    .local p2, "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    const/4 v3, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v1, Lcom/upsight/android/UpsightException;

    const-string v2, "Appending action to ActionMap, trigger can not be null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 153
    :cond_0
    if-nez p2, :cond_1

    .line 154
    new-instance v1, Lcom/upsight/android/UpsightException;

    const-string v2, "Appending action to ActionMap, action can not be null"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 157
    :cond_1
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/action/ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 160
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .restart local v0    # "actionList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    invoke-virtual {p0, p1, v0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public declared-synchronized executeActions(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .locals 9
    .param p1, "trigger"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    .local p2, "object":Lcom/upsight/android/analytics/internal/action/Actionable;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v3, Lcom/upsight/android/analytics/internal/action/ActionMap;->TAG:Ljava/lang/String;

    const-string v4, "%1$s on %2$s:"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p2}, Lcom/upsight/android/analytics/internal/action/Actionable;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v2, v3, v4, v5}, Lcom/upsight/android/logger/UpsightLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/upsight/android/analytics/internal/action/ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 105
    .local v1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    if-eqz v1, :cond_0

    .line 106
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/action/Action;

    .line 107
    .local v0, "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v4, Lcom/upsight/android/analytics/internal/action/ActionMap;->TAG:Ljava/lang/String;

    const-string v5, "  -> %1$s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Lcom/upsight/android/analytics/internal/action/Action;->getType()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v3, v4, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget v3, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    .line 109
    invoke-virtual {v0, p2}, Lcom/upsight/android/analytics/internal/action/Action;->execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 103
    .end local v0    # "action":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    .end local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 112
    .restart local v1    # "actions":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized signalActionCompleted()Z
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mActiveActionCount:I

    .line 124
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->isFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized signalActionMapCompleted()Z
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/ActionMap;, "Lcom/upsight/android/analytics/internal/action/ActionMap<TT;TU;>;"
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/upsight/android/analytics/internal/action/ActionMap;->mIsActionMapCompleted:Z

    .line 135
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/action/ActionMap;->isFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
