.class public Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;
.super Ljava/lang/Object;
.source "UxmContentActions.java"

# interfaces
.implements Lcom/upsight/android/analytics/internal/action/ActionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UxmContentActionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/analytics/internal/action/ActionFactory",
        "<",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
        "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "datastore_factory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lcom/upsight/android/analytics/internal/action/ActionContext;Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/internal/action/Action;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 98
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;

    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/internal/action/Action;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/internal/action/Action;
    .locals 6
    .param p1, "actionContext"    # Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;
    .param p2, "actionJSON"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Lcom/upsight/android/analytics/internal/action/Action",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContent;",
            "Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 107
    if-nez p2, :cond_0

    .line 108
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v4, "Failed to create Action. JSON is null."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 110
    :cond_0
    const-string v3, "action_type"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "actionType":Ljava/lang/String;
    const-string v3, "parameters"

    invoke-virtual {p2, v3}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 112
    .local v0, "actionParams":Lcom/google/gson/JsonObject;
    invoke-static {}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions;->access$500()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$InternalFactory;

    .line 113
    .local v2, "factory":Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$InternalFactory;
    if-nez v2, :cond_1

    .line 114
    new-instance v3, Lcom/upsight/android/UpsightException;

    const-string v4, "Failed to create Action. Unknown action type."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    .line 116
    :cond_1
    invoke-interface {v2, p1, v1, v0}, Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$InternalFactory;->create(Lcom/upsight/android/managedvariables/internal/type/UxmContentActions$UxmContentActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)Lcom/upsight/android/analytics/internal/action/Action;

    move-result-object v3

    return-object v3
.end method
