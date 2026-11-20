.class public Ld/a/b/c/c/f;
.super Ljava/lang/Object;
.source "PrivacyDbUtil.java"


# direct methods
.method public static a(Landroid/content/Context;JJLjava/lang/String;)J
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J
    .param p3, "lastId"    # J
    .param p5, "pName"    # Ljava/lang/String;

    .line 106
    move-wide/from16 v1, p1

    const-wide/16 v3, -0x1

    cmp-long v0, p3, v3

    if-nez v0, :cond_0

    .line 107
    const-wide/16 v3, 0x0

    return-wide v3

    .line 109
    :cond_0
    const/4 v3, 0x0

    .line 110
    .local v3, "cursor":Landroid/database/Cursor;
    const-wide/16 v4, 0x0

    .line 112
    .local v4, "offset":J
    :try_start_0
    invoke-static/range {p0 .. p0}, Ld/a/b/f/b;->a(Landroid/content/Context;)Ld/a/b/f/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 113
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "yyyy-MM-dd HH:mm"

    const/4 v8, 0x3

    const-string v9, "startTime"

    const-string v10, "privacy_record_info"

    const/4 v11, 0x4

    const-string v12, "select * from %s where %s ORDER BY %s DESC,%s DESC"

    const-string v13, "id"

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v6, :cond_1

    .line 114
    :try_start_1
    const-string v6, "startTime>=?"

    .line 115
    .local v6, "selection":Ljava/lang/String;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v16

    aput-object v6, v11, v15

    aput-object v9, v11, v14

    aput-object v13, v11, v8

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .local v8, "sql":Ljava/lang/String;
    new-array v9, v15, [Ljava/lang/String;

    invoke-static {v1, v2, v7}, Ld/a/a/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v16

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v3, v7

    .line 118
    .end local v6    # "selection":Ljava/lang/String;
    .end local v8    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 119
    :cond_1
    const-string v6, "startTime>=? and packageName=?"

    .line 122
    .restart local v6    # "selection":Ljava/lang/String;
    new-array v11, v11, [Ljava/lang/Object;

    aput-object v10, v11, v16

    aput-object v6, v11, v15

    aput-object v9, v11, v14

    aput-object v13, v11, v8

    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 124
    .restart local v8    # "sql":Ljava/lang/String;
    new-array v9, v14, [Ljava/lang/String;

    invoke-static {v1, v2, v7}, Ld/a/a/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v16

    aput-object p5, v9, v15

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v3, v7

    .line 126
    .end local v6    # "selection":Ljava/lang/String;
    .end local v8    # "sql":Ljava/lang/String;
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 128
    :cond_2
    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    .line 129
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 130
    .local v6, "id":J
    cmp-long v8, v6, p3

    if-nez v8, :cond_3

    .line 131
    goto :goto_1

    .line 133
    .end local v6    # "id":J
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_2

    .line 138
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :goto_1
    nop

    .line 140
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 143
    :goto_2
    goto :goto_3

    .line 141
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 142
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_2

    .line 138
    :catchall_0
    move-exception v0

    move-wide v5, v4

    move-object v4, v3

    move-object v3, v0

    goto :goto_4

    .line 135
    :catch_1
    move-exception v0

    .line 136
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 138
    .end local v0    # "t":Ljava/lang/Throwable;
    if-eqz v3, :cond_5

    .line 140
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 146
    :cond_5
    :goto_3
    return-wide v4

    .line 138
    .end local v3    # "cursor":Landroid/database/Cursor;
    .local v4, "cursor":Landroid/database/Cursor;
    .local v5, "offset":J
    :goto_4
    if-eqz v4, :cond_6

    .line 140
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 143
    goto :goto_5

    .line 141
    :catch_2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 142
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_6
    :goto_5
    throw v3
.end method

.method public static a(Landroid/content/Context;JJILjava/lang/String;)Ljava/util/List;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timestamp"    # J
    .param p3, "lastId"    # J
    .param p5, "pageSize"    # I
    .param p6, "pName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJI",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/baidu/model/privacy/DbOpEntry;",
            ">;"
        }
    .end annotation

    .line 161
    move-wide/from16 v7, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 162
    .local v9, "opEntries":Ljava/util/List;, "Ljava/util/List<Lcom/baidu/model/privacy/DbOpEntry;>;"
    const/4 v10, 0x0

    .line 164
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {p0 .. p0}, Ld/a/b/f/b;->a(Landroid/content/Context;)Ld/a/b/f/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 165
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p6

    invoke-static/range {v1 .. v6}, Ld/a/b/c/c/f;->a(Landroid/content/Context;JJLjava/lang/String;)J

    move-result-wide v1

    .line 166
    .local v1, "offset":J
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "privacy_record_info"

    const/4 v12, 0x6

    const-string v13, "select * from %s where %s ORDER BY %s DESC,%s DESC LIMIT %d,%d"

    const-string v14, "id"

    const-string v15, "startTime"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v18, 0x0

    const-string v6, "yyyy-MM-dd HH:mm"

    if-eqz v3, :cond_0

    .line 167
    :try_start_1
    const-string v3, "startTime>=?"

    .line 168
    .local v3, "selection":Ljava/lang/String;
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v11, v12, v18

    aput-object v3, v12, v5

    aput-object v15, v12, v4

    const/4 v4, 0x3

    aput-object v14, v12, v4

    .line 169
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v11, 0x4

    aput-object v4, v12, v11

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x5

    aput-object v4, v12, v11

    .line 168
    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "sql":Ljava/lang/String;
    new-array v5, v5, [Ljava/lang/String;

    invoke-static {v7, v8, v6}, Ld/a/a/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v18

    invoke-virtual {v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 171
    .end local v4    # "sql":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .local v3, "cursor":Landroid/database/Cursor;
    move-object v10, v3

    goto :goto_0

    .line 172
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v3, "startTime>=? and packageName=?"

    .line 175
    .local v3, "selection":Ljava/lang/String;
    new-array v12, v12, [Ljava/lang/Object;

    aput-object v11, v12, v18

    aput-object v3, v12, v5

    aput-object v15, v12, v4

    const/4 v11, 0x3

    aput-object v14, v12, v11

    .line 176
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/16 v17, 0x4

    aput-object v11, v12, v17

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v16, 0x5

    aput-object v11, v12, v16

    .line 175
    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 177
    .local v11, "sql":Ljava/lang/String;
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v7, v8, v6}, Ld/a/a/c;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v18

    aput-object p6, v4, v5

    invoke-virtual {v0, v11, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v10, v4

    .line 179
    .end local v3    # "selection":Ljava/lang/String;
    .end local v11    # "sql":Ljava/lang/String;
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    :goto_1
    new-instance v3, Lcom/baidu/model/privacy/DbOpEntry;

    invoke-direct {v3}, Lcom/baidu/model/privacy/DbOpEntry;-><init>()V

    .line 182
    .local v3, "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    const-string v4, "mode"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 183
    .local v4, "mode":I
    const-string v5, "count"

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 184
    .local v5, "count":I
    const-string v11, "permissionGroup"

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 185
    .local v11, "permissionGroup":Ljava/lang/String;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, "startTime":Ljava/lang/String;
    const-string v13, "endTime"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 187
    .local v13, "endTime":Ljava/lang/String;
    move-object/from16 v16, v0

    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v16, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v19, v17

    .line 188
    .local v19, "id":J
    const-string v0, "packageName"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Lcom/baidu/model/privacy/OpEntry;->setMode(I)V

    .line 191
    invoke-virtual {v3, v5}, Lcom/baidu/model/privacy/DbOpEntry;->setCount(I)V

    .line 192
    move-wide/from16 v17, v1

    move-wide/from16 v1, v19

    .end local v19    # "id":J
    .local v1, "id":J
    .local v17, "offset":J
    invoke-virtual {v3, v1, v2}, Lcom/baidu/model/privacy/OpEntry;->setId(J)V

    .line 193
    invoke-virtual {v3, v11}, Lcom/baidu/model/privacy/DbOpEntry;->setPermissionGroup(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v3, v0}, Lcom/baidu/model/privacy/OpEntry;->setPackageName(Ljava/lang/String;)V

    .line 195
    invoke-static {v12, v13}, Ld/a/a/c;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 196
    invoke-static {v12, v6}, Ld/a/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    .line 200
    :cond_1
    invoke-static {v12, v6}, Ld/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v21, v19

    .line 201
    .local v21, "startTimestamp":J
    invoke-static {v13, v6}, Ld/a/a/c;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v19

    move-wide/from16 v23, v19

    .line 202
    .local v23, "endTimestamp":J
    move-object/from16 v19, v0

    move-wide/from16 v25, v1

    move-wide/from16 v0, v21

    .end local v1    # "id":J
    .end local v21    # "startTimestamp":J
    .local v0, "startTimestamp":J
    .local v19, "packageName":Ljava/lang/String;
    .local v25, "id":J
    invoke-virtual {v3, v0, v1}, Lcom/baidu/model/privacy/OpEntry;->setStartTime(J)V

    .line 203
    move-wide/from16 v20, v0

    move-wide/from16 v0, v23

    .end local v23    # "endTimestamp":J
    .local v0, "endTimestamp":J
    .local v20, "startTimestamp":J
    invoke-virtual {v3, v0, v1}, Lcom/baidu/model/privacy/OpEntry;->setEndTime(J)V

    .line 204
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    nop

    .end local v0    # "endTimestamp":J
    .end local v3    # "opEntry":Lcom/baidu/model/privacy/DbOpEntry;
    .end local v4    # "mode":I
    .end local v5    # "count":I
    .end local v11    # "permissionGroup":Ljava/lang/String;
    .end local v12    # "startTime":Ljava/lang/String;
    .end local v13    # "endTime":Ljava/lang/String;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "startTimestamp":J
    .end local v25    # "id":J
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v0, v16

    move-wide/from16 v1, v17

    goto/16 :goto_1

    .line 179
    .end local v16    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "offset":J
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v1, "offset":J
    :cond_3
    move-object/from16 v16, v0

    move-wide/from16 v17, v1

    .line 211
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "offset":J
    :goto_2
    nop

    .line 213
    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 216
    :goto_3
    goto :goto_4

    .line 214
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 215
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0    # "t":Ljava/lang/Throwable;
    goto :goto_3

    .line 211
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    .line 207
    :catch_1
    move-exception v0

    .line 209
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 211
    .end local v0    # "t":Ljava/lang/Throwable;
    if-eqz v10, :cond_4

    .line 213
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 219
    :cond_4
    :goto_4
    return-object v9

    .line 211
    :goto_5
    if-eqz v10, :cond_5

    .line 213
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 216
    goto :goto_6

    .line 214
    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 215
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 218
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_5
    :goto_6
    throw v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 293
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "PrivacyDbUtil"

    if-eqz v0, :cond_0

    .line 294
    :try_start_1
    const-string v0, "[ignore]delete privacy record data.pakageName is empty"

    invoke-static {v1, v0}, Ld/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void

    .line 297
    :cond_0
    invoke-static {p0}, Ld/a/b/f/b;->a(Landroid/content/Context;)Ld/a/b/f/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 298
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "packageName = ?"

    .line 299
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 300
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v6, "privacy_record_info"

    invoke-virtual {v0, v6, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 301
    .local v6, "row":I
    const-string v7, "delete %s privacy record data,clear_row_num=%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v5

    .line 302
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v3

    .line 301
    invoke-static {v1, v7, v8}, Ld/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "row":I
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "t":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 306
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
