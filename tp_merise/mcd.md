| Entité ou association | Libellé de l'attribut | Type         |
|:----------------------|:----------------------|:-------------|
| categorie             | id                    | bigint       |
| "                     | nom                   | varchar(100) |
| "                     | created_at            | timestamp    |
| "                     | updated_at            | timestamp    |
|                       |                       |              |
| commande              | id                    | bigint       |
| "                     | order_id              | varchar(100) |
| "                     | statut                | varchar      |
| "                     | created_at            | timestamp    |
| "                     | updated_at            | timestamp    |
| "                     | utilisateur_id        | bigint       |
|                       |                       |              |
| etiquette             | id                    | bigint       |
| "                     | nom                   | varchar(100) |
| "                     | created_at            | timestamp    |
| "                     | updated_at            | timestamp    |
|                       |                       |              |
| produit               | id                    | bigint       |
| "                     | nom                   | varchar(100) |
| "                     | quantité              | bigint       |
| "                     | statut                | bigint       |
| "                     | created_at            | timestamp    |
| "                     | updated_at            | timestamp    |
| "                     | category_id           | bigint       |
|                       |                       |              |
| utilisateur           | id                    | bigint       |
| "                     | name                  | varchar(100) |
| "                     | mot_de_passe          | varchar(255) |
| "                     | created_at            | timestamp    |
| "                     | updated_at            | timestamp    |
|                       |                       |              |
| avoir                 | produit_id            | bigint       |
| "                     | tag_id                | bigint       |
|                       |                       |              |
| contenir              | produit_id            | bigint       |
| "                     | order_id              | bigint       |