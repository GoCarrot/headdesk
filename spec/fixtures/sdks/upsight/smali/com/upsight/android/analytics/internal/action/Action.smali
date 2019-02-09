.class public abstract Lcom/upsight/android/analytics/internal/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/internal/action/Actionable;",
        "U:",
        "Lcom/upsight/android/analytics/internal/action/ActionContext;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected completionHandler:Ljava/lang/Runnable;

.field private mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private mError:Lcom/google/gson/JsonObject;

.field private mParams:Lcom/google/gson/JsonObject;

.field private mResults:Lcom/google/gson/JsonArray;

.field private mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/upsight/android/analytics/internal/action/ActionContext;Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .locals 1
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "params"    # Lcom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Ljava/lang/String;",
            "Lcom/google/gson/JsonObject;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    .local p1, "actionContext":Lcom/upsight/android/analytics/internal/action/ActionContext;, "TU;"
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mResults:Lcom/google/gson/JsonArray;

    .line 42
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mError:Lcom/google/gson/JsonObject;

    .line 44
    iput-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->completionHandler:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;

    .line 55
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/action/Action;->mType:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    .line 57
    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/upsight/android/analytics/internal/action/Actionable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public getActionContext()Lcom/upsight/android/analytics/internal/action/ActionContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mActionContext:Lcom/upsight/android/analytics/internal/action/ActionContext;

    return-object v0
.end method

.method public getError()Lcom/google/gson/JsonObject;
    .locals 1

    .prologue
    .line 177
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mError:Lcom/google/gson/JsonObject;

    return-object v0
.end method

.method public getResults()Lcom/google/gson/JsonArray;
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mResults:Lcom/google/gson/JsonArray;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/action/Action;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isSynchronous()Z
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected optParamInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 104
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    .line 110
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected optParamJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 157
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 162
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected optParamJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 138
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 140
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 145
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected optParamLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 120
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 122
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v2

    .line 128
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected optParamString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mParams:Lcom/google/gson/JsonObject;

    invoke-virtual {v1, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 86
    .local v0, "element":Lcom/google/gson/JsonElement;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .end local v0    # "element":Lcom/google/gson/JsonElement;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCompletionHandler(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "completion"    # Ljava/lang/Runnable;

    .prologue
    .line 192
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Action;->completionHandler:Ljava/lang/Runnable;

    .line 193
    return-void
.end method

.method public setError(Lcom/google/gson/JsonObject;)V
    .locals 0
    .param p1, "error"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 174
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mError:Lcom/google/gson/JsonObject;

    .line 175
    return-void
.end method

.method public setResults(Lcom/google/gson/JsonArray;)V
    .locals 0
    .param p1, "results"    # Lcom/google/gson/JsonArray;

    .prologue
    .line 166
    .local p0, "this":Lcom/upsight/android/analytics/internal/action/Action;, "Lcom/upsight/android/analytics/internal/action/Action<TT;TU;>;"
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/action/Action;->mResults:Lcom/google/gson/JsonArray;

    .line 167
    return-void
.end method
